add_executable(${EXECUTABLE_NAME} main.cc)

#hier sind die Header die in den include directories liegen.
target_link_libraries(${EXECUTABLE_NAME} PUBLIC ${LIBRARY_NAME})
