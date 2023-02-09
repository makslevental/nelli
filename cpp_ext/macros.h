//
// Created by maksim on 1/31/23.
//

#include <iostream>

#ifndef LOOPY_MACROS_H
#define LOOPY_MACROS_H

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
    std::cout << "[" << __FILE__ << "][" << __FUNCTION__ << "][Line "          \
              << __LINE__ << "] " << str << std::endl;                         \
  }

#endif // LOOPY_MACROS_H
