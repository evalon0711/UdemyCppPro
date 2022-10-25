cmake_minimum_required(VERSION 3.16)

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

# bereits definierte Variablen die man immer setzen sollte. bei einem C prject das xx weg
set(CMAKE_CXX_STANDARD          17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS        OFF) #gcc hat erweiterungen die im standards die im cpp17 standard nicht definiert wird.

set(EXECUTABLE_NAME Executable)
set(LIBRARY_NAME Library)

# eine option mit der ich eine Executable bauen kann
# will ich die Unit test mit bauen oder nicht.
option(COMPILE_EXECUTABLE "Wehther to compile the executable" OFF) #ON

add_subdirectory(src)
if (COMPILE_EXECUTABLE)
    add_subdirectory(app)
endif()
