add_library(${LIBRARY_NAME} my_lib.cc)

#hier sind die Header die in den include directories liegen.
target_include_directories(${LIBRARY_NAME} PUBLIC "./") 
