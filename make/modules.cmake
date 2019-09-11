
SET (AppDirPath ${RootDirPath}/example/demo)

SET (eMDDirPath ${RootDirPath}/eMD)

SET (BspDirPath ${RootDirPath}/bsp)

SET (SysDirPath ${RootDirPath}/sys)

#******************************************************************************#
#                              Applications modules
#******************************************************************************#
SET (app_SRCS
    ${AppDirPath}/main.c
)

#******************************************************************************#
#                               eMD modules
#******************************************************************************#
SET (eMD_Driver_SRCS
    ${eMDDirPath}/driver/eMPL/inv_mpu_dmp_motion_driver.c
    ${eMDDirPath}/driver/eMPL/inv_mpu.c
)

SET (eMD_eMPL_hal_SRCS
    ${eMDDirPath}/eMPL-hal/eMPL_outputs.c
)

SET (eMD_mllite_SRCS
    ${eMDDirPath}/mllite/data_builder.c
    ${eMDDirPath}/mllite/hal_outputs.c
    ${eMDDirPath}/mllite/message_layer.c
    ${eMDDirPath}/mllite/ml_math_func.c
    ${eMDDirPath}/mllite/mlmath.c
    ${eMDDirPath}/mllite/mpl.c
    ${eMDDirPath}/mllite/results_holder.c
    ${eMDDirPath}/mllite/start_manager.c
    ${eMDDirPath}/mllite/storage_manager.c
)


#******************************************************************************#
#                               BSP modules
#******************************************************************************#

SET (bsp_Linux_SRCS
    ${BspDirPath}/Linux/bsp.c
    ${BspDirPath}/Linux/bsp_iic.c
)

#******************************************************************************#
#                               kernel modules
#******************************************************************************#
SET (sys_SRCS
    ${SysDirPath}/klog.c
    ${SysDirPath}/misc.c
)

