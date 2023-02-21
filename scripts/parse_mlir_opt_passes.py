from textwrap import dedent, indent

from yaml import load

try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    from yaml import Loader, Dumper


data = load(open("passes.txt"), Loader=Loader)

illegal_names = {"global": "global_"}
illegal_names_back = {"global_": "global"}


ident = 4
all_types = set()
for pass_name, maybe_args in data.items():
    # print(k, v)
    py_args = []
    if maybe_args is None:
        pass
    else:
        for a in maybe_args:
            if isinstance(a, str):
                if "=" in a:
                    name, typ = a.split("=")
                    all_types.add(typ)
                    match typ:
                        case item if item in {
                            "<long>",
                            "<ulong>",
                            "<number>",
                            "<uint>",
                            "<int>",
                        }:
                            arg_typ = "int"
                        case "<string>":
                            arg_typ = "str"
                        case _:
                            raise RuntimeError
                else:
                    name = a
                    arg_typ = "bool"
                name = illegal_names.get(name, name)
                arg_name = f"{name.replace('-', '_')}"
                py_args.append((arg_name, arg_typ))
            else:
                assert isinstance(a, dict)
                assert len(a) == 1
                name, _typ = list(a.keys())[0].split("=")
                arg_name = f"{name.replace('-', '_')}"
                py_args.append((arg_name, "str"))

    if py_args:
        py_args_str = ", ".join([f"{n}=None" for n, t in py_args])
        print(
            indent(
                f"def {pass_name.replace('-', '_')}(self, {py_args_str}):",
                prefix=" " * ident,
            )
        )
        mlir_args = []
        for n, t in py_args:
            if t in {"int", "str"}:
                print(
                    indent(
                        f"if {n} is not None and isinstance({n}, (list, tuple)):",
                        prefix=" " * ident * 2,
                    )
                )
                print(indent(f"{n} = ','.join(map(str, {n}))", prefix=" " * ident * 3))
            mlir_args.append(f"{n}={n}")
        print(
            indent(
                dedent(
                    f"""\
           self._add_pass("{pass_name}", {', '.join(mlir_args)})
           return self
    """
                ),
                prefix=" " * ident * 2,
            )
        )

    else:
        print(
            indent(
                dedent(
                    f"""\
        def {pass_name.replace('-', '_')}(self):
           self._add_pass("{pass_name}")
           return self
    """
                ),
                prefix=" " * ident,
            )
        )
