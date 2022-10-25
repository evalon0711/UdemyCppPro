cmake_minimum_required(VERSION 3.16)

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

set(EXECUTABLE_NAME Executable)
set(LIBRARY_NAME Library)

add_subdirectory(src) #erst die Library 
add_subdirectory(app) #dann das Exexutable 

# Variblen aus der Haupt cmake datei, sidn für die cmake files in den unteren Schichten lesbar.
# Jeder Folder muss dann eine CMakeLists.txt haben. 
# bswp nur add_subdirectory()
