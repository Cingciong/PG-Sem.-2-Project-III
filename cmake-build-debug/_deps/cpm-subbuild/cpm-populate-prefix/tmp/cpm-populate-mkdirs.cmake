# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-src"
  "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-build"
  "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-subbuild/cpm-populate-prefix"
  "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-subbuild/cpm-populate-prefix/tmp"
  "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-subbuild/cpm-populate-prefix/src/cpm-populate-stamp"
  "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-subbuild/cpm-populate-prefix/src"
  "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-subbuild/cpm-populate-prefix/src/cpm-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-subbuild/cpm-populate-prefix/src/cpm-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/kulak/OneDrive/Documents/AAAAAAAAAVScode/Studia/pyBind/cmake-build-debug/_deps/cpm-subbuild/cpm-populate-prefix/src/cpm-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
