function(add_git_submodule dir)
    find_package(Git REQUIRED)

    Set(GIT_EXECUTABLE "D:/Program Files/Git/bin/git.exe")
    if (NOT EXISTS ${dir}/CMakeLists.txt)
        execute_process(COMMAND ${GIT_EXECUTABLE}
            submodule update --init --recursive -- ${dir}
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
    endif()

    add_subdirectory(${dir})
endfunction(add_git_submodule dir)
