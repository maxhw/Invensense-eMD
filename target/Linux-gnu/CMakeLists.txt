
CMAKE_MINIMUM_REQUIRED (VERSION 3.5.1)

PROJECT (Client)

# CURRENT DIRECTORY
SET (ProjDirPath ${CMAKE_CURRENT_SOURCE_DIR})

# Standard include
INCLUDE_DIRECTORIES (${RootDirPath}/include)

INCLUDE_DIRECTORIES (${ProjDirPath})

INCLUDE_DIRECTORIES (${RootDirPath}/app)

# eMD
INCLUDE_DIRECTORIES (${RootDirPath}/eMD/driver/include)
INCLUDE_DIRECTORIES (${RootDirPath}/eMD/driver/stm32L)
INCLUDE_DIRECTORIES (${RootDirPath}/eMD/eMPL-hal)
INCLUDE_DIRECTORIES (${RootDirPath}/eMD/mllite)
INCLUDE_DIRECTORIES (${RootDirPath}/eMD/mpl)

SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99")
SET (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DMPU9250")

SET (CMAKE_C++_FLAGS "${CMAKE_C++_FLAGS} -std=gnu99")
SET (CMAKE_C++_FLAGS "${CMAKE_C++_FLAGS} -DMPU9250")

# Add executable file
ADD_EXECUTABLE (${PROJECT_NAME}
    "${app_SRCS}"
    "${eMD_Driver_SRCS}"
    "${eMD_eMPL_hal_SRCS}"
    "${eMD_mllite_SRCS}"
    "${bsp_Linux_SRCS}"
    "${sys_SRCS}"
)

