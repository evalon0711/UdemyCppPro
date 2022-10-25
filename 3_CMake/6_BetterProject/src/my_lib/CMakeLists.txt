
# baue dir Variablen für deine Files
set(LIBRARY_SOURCES
    "my_lib.cc")
# baue dir Variablen für deine Header
set(LIBRARY_INCLUDES
    "./"
    "${CMAKE_BINARY_DIR}/configured_files/include")

# gebe die Keywords immer mit an damit man sieht dass es absicht war. 
# STATIC
# PUBLIC
add_library(${LIBRARY_NAME} STATIC
    ${LIBRARY_SOURCES})
target_include_directories(${LIBRARY_NAME} PUBLIC
    ${LIBRARY_INCLUDES})

# !!! nur add und danach nur noch target und nichts anderes (bspw blablabla_include_directories).
# 
