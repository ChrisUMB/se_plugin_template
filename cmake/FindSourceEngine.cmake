set(SE_PUBLIC_DIR lib/source-engine/engine/public)
set(SE_MODULES_DIR lib/source-engine/engine/modules)
set(SE_COMMON_DIR lib/source-engine/engine/common)
set(SE_GAMES_DIR lib/source-engine/games)
set(SE_GAMES_COMMON_DIR lib/source-engine/games/common)

set(SE_LIB_DIR ${CMAKE_LIB_DIR}/source-engine/lib/source-engine/${CMAKE_BUILD_TYPE})

set(SE_INCLUDES
        ${SE_GAMES_DIR}
        ${SE_PUBLIC_DIR}
        ${SE_PUBLIC_DIR}/engine
        ${SE_PUBLIC_DIR}/tier0
        ${SE_PUBLIC_DIR}/tier1
        ${SE_COMMON_DIR}/

        ${SE_GAMES_COMMON_DIR}/client/game_controls

        ${SE_GAMES_COMMON_DIR}/client/headers
        ${SE_GAMES_COMMON_DIR}/server/headers
        ${SE_GAMES_COMMON_DIR}/shared/headers
        ${SE_GAMES_DIR}/hl2/client/headers
        ${SE_GAMES_DIR}/hl2/shared/headers
        ${SE_GAMES_DIR}/portal/shared/headers
        )

set(SE_LINK_LIBRARIES tier0 tier1 tier2 tier3 engine mathlib
#        "${SE_LIB_DIR}/tier0.lib"
#        "${SE_LIB_DIR}/tier1.lib"
#        "${SE_LIB_DIR}/tier2.lib"
#        "${SE_LIB_DIR}/tier3.lib"
#        "${SE_LIB_DIR}/engine.lib"
#        "${SE_LIB_DIR}/mathlib.lib"
        )