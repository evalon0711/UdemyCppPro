set(EXE_SOURCES
    "main.cc")
set(EXE_INCLUDES
    "./")


# gebe die Keywords immer mit an damit man sieht dass es absicht war. 
# STATIC
# PUBLIC
# aktuell kein Header vorhanden jedoch macht dies ja auch nix kaputt, dann hat man es bereits schon wenn man nichts anderes braucht.     

add_executable(${EXECUTABLE_NAME} ${EXE_SOURCES})
target_include_directories(${EXECUTABLE_NAME} PUBLIC
${EXE_INCLUDES})
target_link_libraries(${EXECUTABLE_NAME} PUBLIC
${LIBRARY_NAME})

#hilfe zum überprüfen wo ich gerade bin, verwende:
message("Exe Name:" ${EXECUTABLE_NAME})

#windows mit F1 in VS: 
    #cmake delete cache and reconfigure
    # messages werden beim Configurieren und nicht beim Builden ausgegeben.

# glogg function : 
# mit RegEx kann man alle Ordner in einer Source datei abspeichern, wird jedoch NICHT als GOOG Practise angesehen, da 
# man ja auch Dateien anzieht, die man möglcherweise gar nicht haben will. 
# BEST Practise: Alle Src Dateien einzeln auflisten.


# !!! nur add und danach nur noch target und nichts anderes (bspw blablabla_include_directories).
# 
