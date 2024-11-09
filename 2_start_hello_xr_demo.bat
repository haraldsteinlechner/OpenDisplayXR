@echo off

REM Specify the OpenXR configuration file
set XR_RUNTIME_JSON=%~dp0\openxr_monado.json

REM Specify Monado environment variables
REM set P_OVERRIDE_ACTIVE_CONFIG=remote

REM Enable the Qwerty device driver
set P_OVERRIDE_ACTIVE_CONFIG=qwerty
set QWERTY_ENABLE=1
set XRT_DEBUG_GUI=1

set XR_API_LAYER_PATH=bin\api_layers
REM set XR_ENABLE_API_LAYERS=XR_APILAYER_LUNARG_api_dump
REM set XR_ENABLE_API_LAYERS=XR_APILAYER_HAAGCH_gl_context_fix;XR_aardworx_streamout
set XR_ENABLE_API_LAYERS=XR_aardworx_streamout

REM Resize the Monado Window to fit across a dual monitor extended desktop layout
REM start "Extended Desktop Resize" %~dp0\bin\extended_desktop_resize.exe

REM Start the OpenXR Based hello_xr demo app
%~dp0\bin\hello_xr\hello_xr.exe -G OpenGL

pause
