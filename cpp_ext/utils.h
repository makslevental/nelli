//
// Created by maksim on 1/31/23.
//

#include <iostream>

#ifndef LOOPY_UTILS_H
#define LOOPY_UTILS_H

#define debug(...) logger(#__VA_ARGS__, __VA_ARGS__)
template <typename... Args> void logger(std::string vars, Args &&...values) {
  std::cerr << vars << " = ";
  std::string delim;
  (..., (std::cerr << delim << values, delim = ", "));
  std::cerr << "\n";
}

// #include <iostream>
// #include <string_view>
// #include <experimental/source_location>
//
// void log(std::string_view message,
//          const std::source_location& location =
//          std::source_location::current()
//) {
//   std::cout << "info:"
//             << location.file_name() << ":"
//             << location.line() << ":"
//             << location.function_name() << " "
//             << message << '\n';
// }
// https://stackoverflow.com/a/59748012

#define log(...)                                                               \
  {                                                                            \
    char str[100];                                                             \
    sprintf(str, __VA_ARGS__);                                                 \
    std::cout << "[" << __FILE__ << "][" << __PRETTY_FUNCTION__ << "][Line "   \
              << __LINE__ << "] " << str << std::endl;                         \
  }

#include <deque>
#include <functional>

class scope_guard {
public:
  enum execution { always, no_exception, exception };

  scope_guard(scope_guard &&) = default;
  explicit scope_guard(execution policy = always) : policy(policy) {}

  template <class Callable>
  scope_guard(Callable &&func, execution policy = always) : policy(policy) {
    this->operator+=<Callable>(std::forward<Callable>(func));
  }

  template <class Callable> scope_guard &operator+=(Callable &&func) try {
    handlers.emplace_front(std::forward<Callable>(func));
    return *this;
  } catch (...) {
    if (policy != no_exception)
      func();
    throw;
  }

  ~scope_guard() {
    if (policy == always ||
        (std::uncaught_exceptions() == (policy == exception))) {
      for (auto &f : handlers)
        try {
          f();          // must not throw
        } catch (...) { /* std::terminate(); ? */
        }
    }
  }

  void dismiss() noexcept { handlers.clear(); }

  scope_guard(const scope_guard &) = delete;
  void operator=(const scope_guard &) = delete;

private:
  std::deque<std::function<void()>> handlers;
  execution policy = always;
};

#endif // LOOPY_UTILS_H
