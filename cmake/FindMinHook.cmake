set(MH_LIB_MSVC_TOOLSET_VERSION ${MSVC_TOOLSET_VERSION})

if (MSVC_TOOLSET_VERSION GREATER 141)
    set(MH_LIB_MSVC_TOOLSET_VERSION 141)
endif ()

set(MH_INCLUDES lib/minhook/include)

set(MH_LINK_LIBRARIES
        #TODO: Abstract `x86` and `-mt` to be determined, not hard coded.
        ${CMAKE_LIB_DIR}/minhook/lib/libMinHook-x86-v${MH_LIB_MSVC_TOOLSET_VERSION}-mt.lib
        )