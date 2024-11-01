cmake_minimum_required(VERSION 3.22)
set(CMAKE_CXX_STANDARD 14)
project(plugin_template)

set(SE_RUN_DIR ${CMAKE_SOURCE_DIR}/run)
add_subdirectory(lib/source-engine)

file(GLOB_RECURSE SOURCES main/src/*.cpp main/src/*.c)

add_library(plugin_template SHARED ${SOURCES})

target_compile_definitions(plugin_template PRIVATE CLIENT_DLL)

target_include_directories(plugin_template PRIVATE main/include main/include/util ${SE_INCLUDES})

target_link_libraries(plugin_template PRIVATE tier0 tier1 tier2 tier3 mathlib engine)

target_link_options(plugin_template PRIVATE
        /NOLOGO /SUBSYSTEM:WINDOWS /MACHINE:X86 /ERRORREPORT:PROMPT
        $<$<CONFIG:Release>:/MANIFEST:NO /NODEFAULTLIB:libc /NODEFAULTLIB:libcd /NODEFAULTLIB:libcmtd /OPT:REF /OPT:ICF>
        $<$<CONFIG:Debug>:/INCREMENTAL /DLL /MANIFEST:NO /NODEFAULTLIB:libc /NODEFAULTLIB:libcd /NODEFAULTLIB:libcmt /DEBUG>
        $<$<CONFIG:RelWithDebInfo>:/NODEFAULTLIB:libc /NODEFAULTLIB:libcd /NODEFAULTLIB:libcmtd /OPT:REF /OPT:ICF /DEBUG>
        )

set_target_properties(plugin_template PROPERTIES
        OUTPUT_NAME plugin_template
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/run/hl2/
        MSVC_RUNTIME_LIBRARY MultiThreaded$<$<CONFIG:Debug>:Debug>
        )