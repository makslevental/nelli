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

#endif // LOOPY_MACROS_H
