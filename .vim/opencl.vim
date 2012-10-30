" Vim syntax file
" Language:     C OpenCL
" Maintainer:   Mateusz Manowiecki <nospam@fault.pl>
" Version:      1.0
" Last Change:  2010-02-24
" Usage:
"
"   Source it from somewhere
"
" cl.h
" 
" Data Types
  syntax keyword clType float2
  syntax keyword clType float4

  syntax keyword clType cl_char
  syntax keyword clType cl_uchar
  syntax keyword clType cl_short
  syntax keyword clType cl_ushort
  syntax keyword clType cl_int
  syntax keyword clType cl_uint
  syntax keyword clType cl_long
  syntax keyword clType cl_ulong
  syntax keyword clType cl_half
  syntax keyword clType cl_float
  syntax keyword clType cl_double
  "
  syntax keyword clType cl_platform_id
  syntax keyword clType cl_device_id
  syntax keyword clType cl_context
  syntax keyword clType cl_command_queue
  syntax keyword clType cl_mem
  syntax keyword clType cl_program
  syntax keyword clType cl_kernel
  syntax keyword clType cl_event
  syntax keyword clType cl_sampler
  "
  syntax keyword clType cl_bool
  syntax keyword clType cl_bitfield
  syntax keyword clType cl_device_type
  syntax keyword clType cl_platform_info
  syntax keyword clType cl_device_info
  syntax keyword clType cl_device_address_info
  syntax keyword clType cl_device_fp_config
  syntax keyword clType cl_device_mem_cache_type
  syntax keyword clType cl_device_local_mem_type
  syntax keyword clType cl_device_exec_capabilities
  syntax keyword clType cl_command_queue_properties
  "
  syntax keyword clType cl_context_properties
  syntax keyword clType cl_context_info
  syntax keyword clType cl_command_queue_info
  syntax keyword clType cl_channel_order
  syntax keyword clType cl_channel_type
  syntax keyword clType cl_mem_flags
  syntax keyword clType cl_mem_object_type
  syntax keyword clType cl_mem_info
  syntax keyword clType cl_image_info
  syntax keyword clType cl_addressing_mode
  syntax keyword clType cl_filter_mode
  syntax keyword clType cl_sampler_info
  syntax keyword clType cl_map_flags
  syntax keyword clType cl_program_info
  syntax keyword clType cl_program_build_info
  syntax keyword clType cl_build_status
  syntax keyword clType cl_kernel_info
  syntax keyword clType cl_kernel_work_group_info
  syntax keyword clType cl_event_info
  syntax keyword clType cl_command_type
  syntax keyword clType cl_profiling_info
  syntax keyword clType cl_image_format
"
"
" Constants
  syntax keyword clConstant CL_FALSE
  syntax keyword clConstant CL_TRUE
  "
  syntax keyword clConstant CL_PLATFORM_PROFILE
  syntax keyword clConstant CL_PLATFORM_VERSION
  syntax keyword clConstant CL_PLATFORM_NAME
  syntax keyword clConstant CL_PLATFORM_VENDOR
  syntax keyword clConstant CL_PLATFORM_EXTENSIONS
  " 
  syntax keyword clConstant CL_DEVICE_TYPE_DEFAULT 
  syntax keyword clConstant CL_DEVICE_TYPE_CPU
  syntax keyword clConstant CL_DEVICE_TYPE_GPU
  syntax keyword clConstant CL_DEVICE_TYPE_ACCELERATOR
  syntax keyword clConstant CL_DEVICE_TYPE_ALL
  "  
  syntax keyword clConstant CL_DEVICE_TYPE
  syntax keyword clConstant CL_DEVICE_VENDOR_ID
  syntax keyword clConstant CL_DEVICE_MAX_COMPUTE_UNITS
  syntax keyword clConstant CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS
  syntax keyword clConstant CL_DEVICE_MAX_WORK_GROUP_SIZE
  syntax keyword clConstant CL_DEVICE_MAX_WORK_ITEM_SIZES
  syntax keyword clConstant CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR
  syntax keyword clConstant CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT
  syntax keyword clConstant CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT
  syntax keyword clConstant CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG
  syntax keyword clConstant CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT
  syntax keyword clConstant CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE
  syntax keyword clConstant CL_DEVICE_MAX_CLOCK_FREQUENCY
  syntax keyword clConstant CL_DEVICE_ADDRESS_BITS
  syntax keyword clConstant CL_DEVICE_MAX_READ_IMAGE_ARGS
  syntax keyword clConstant CL_DEVICE_MAX_WRITE_IMAGE_ARGS
  syntax keyword clConstant CL_DEVICE_MAX_MEM_ALLOC_SIZE
  syntax keyword clConstant CL_DEVICE_IMAGE2D_MAX_WIDTH
  syntax keyword clConstant CL_DEVICE_IMAGE2D_MAX_HEIGHT
  syntax keyword clConstant CL_DEVICE_IMAGE3D_MAX_WIDTH
  syntax keyword clConstant CL_DEVICE_IMAGE3D_MAX_HEIGHT
  syntax keyword clConstant CL_DEVICE_IMAGE3D_MAX_DEPTH
  syntax keyword clConstant CL_DEVICE_IMAGE_SUPPORT
  syntax keyword clConstant CL_DEVICE_MAX_PARAMETER_SIZE
  syntax keyword clConstant CL_DEVICE_MAX_SAMPLERS
  syntax keyword clConstant CL_DEVICE_MEM_BASE_ADDR_ALIGN
  syntax keyword clConstant CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE
  syntax keyword clConstant CL_DEVICE_SINGLE_FP_CONFIG
  syntax keyword clConstant CL_DEVICE_GLOBAL_MEM_CACHE_TYPE
  syntax keyword clConstant CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE
  syntax keyword clConstant CL_DEVICE_GLOBAL_MEM_CACHE_SIZE
  syntax keyword clConstant CL_DEVICE_GLOBAL_MEM_SIZE
  syntax keyword clConstant CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE
  syntax keyword clConstant CL_DEVICE_MAX_CONSTANT_ARGS
  syntax keyword clConstant CL_DEVICE_LOCAL_MEM_TYPE
  syntax keyword clConstant CL_DEVICE_LOCAL_MEM_SIZE
  syntax keyword clConstant CL_DEVICE_ERROR_CORRECTION_SUPPORT
  syntax keyword clConstant CL_DEVICE_PROFILING_TIMER_RESOLUTION
  syntax keyword clConstant CL_DEVICE_ENDIAN_LITTLE
  syntax keyword clConstant CL_DEVICE_AVAILABLE
  syntax keyword clConstant CL_DEVICE_COMPILER_AVAILABLE
  syntax keyword clConstant CL_DEVICE_EXECUTION_CAPABILITIES
  syntax keyword clConstant CL_DEVICE_QUEUE_PROPERTIES
  syntax keyword clConstant CL_DEVICE_NAME
  syntax keyword clConstant CL_DEVICE_VENDOR
  syntax keyword clConstant CL_DRIVER_VERSION
  syntax keyword clConstant CL_DEVICE_PROFILE
  syntax keyword clConstant CL_DEVICE_VERSION
  syntax keyword clConstant CL_DEVICE_EXTENSIONS
  syntax keyword clConstant CL_DEVICE_PLATFORM
  "
  " cl_device_fp_config - bitfield
  syntax keyword clConstant CL_FP_DENORM
  syntax keyword clConstant CL_FP_INF_NAN
  syntax keyword clConstant CL_FP_ROUND_TO_NEAREST
  syntax keyword clConstant CL_FP_ROUND_TO_ZERO
  syntax keyword clConstant CL_FP_ROUND_TO_INF
  syntax keyword clConstant CL_FP_FMA
  "
  " cl_device_mem_cache_type
  syntax keyword clConstant CL_NONE
  syntax keyword clConstant CL_READ_ONLY_CACHE
  syntax keyword clConstant CL_READ_WRITE_CACHE
  "
  " cl_device_local_mem_type
  syntax keyword clConstant CL_LOCAL
  syntax keyword clConstant CL_GLOBAL
  "
  " cl_device_exec_capabilities - bitfield
  syntax keyword clConstant CL_EXEC_KERNEL
  syntax keyword clConstant CL_EXEC_NATIVE_KERNEL
  "
  " cl_command_queue_properties - bitfield
  syntax keyword clConstant CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE
  syntax keyword clConstant CL_QUEUE_PROFILING_ENABLE
  "
  " cl_context_info
  syntax keyword clConstant CL_CONTEXT_REFERENCE_COUNT
  syntax keyword clConstant CL_CONTEXT_DEVICES
  syntax keyword clConstant CL_CONTEXT_PROPERTIES
  "
  " cl_context_properties
  syntax keyword clConstant CL_CONTEXT_PLATFORM
  "
  " cl_command_queue_info
  syntax keyword clConstant CL_QUEUE_CONTEXT
  syntax keyword clConstant CL_QUEUE_DEVICE
  syntax keyword clConstant CL_QUEUE_REFERENCE_COUNT
  syntax keyword clConstant CL_QUEUE_PROPERTIES
  "
  " cl_mem_flags - bitfield
  syntax keyword clConstant CL_MEM_READ_WRITE
  syntax keyword clConstant CL_MEM_WRITE_ONLY
  syntax keyword clConstant CL_MEM_READ_ONLY
  syntax keyword clConstant CL_MEM_USE_HOST_PTR
  syntax keyword clConstant CL_MEM_ALLOC_HOST_PTR
  syntax keyword clConstant CL_MEM_COPY_HOST_PTR
  "
  " cl_channel_order
  syntax keyword clConstant CL_R
  syntax keyword clConstant CL_A
  syntax keyword clConstant CL_RG
  syntax keyword clConstant CL_RA
  syntax keyword clConstant CL_RGB
  syntax keyword clConstant CL_RGBA
  syntax keyword clConstant CL_BGRA
  syntax keyword clConstant CL_ARGB
  syntax keyword clConstant CL_INTENSITY
  syntax keyword clConstant CL_LUMINANCE
  "
  " cl_channel_type
  syntax keyword clConstant CL_SNORM_INT8
  syntax keyword clConstant CL_SNORM_INT16
  syntax keyword clConstant CL_UNORM_INT8
  syntax keyword clConstant CL_UNORM_INT16
  syntax keyword clConstant CL_UNORM_SHORT_565
  syntax keyword clConstant CL_UNORM_SHORT_555
  syntax keyword clConstant CL_UNORM_INT_101010
  syntax keyword clConstant CL_SIGNED_INT8
  syntax keyword clConstant CL_SIGNED_INT16
  syntax keyword clConstant CL_SIGNED_INT32
  syntax keyword clConstant CL_UNSIGNED_INT8
  syntax keyword clConstant CL_UNSIGNED_INT16
  syntax keyword clConstant CL_UNSIGNED_INT32
  syntax keyword clConstant CL_HALF_FLOAT
  syntax keyword clConstant CL_FLOAT
  "
  " cl_mem_object_type
  syntax keyword clConstant CL_MEM_OBJECT_BUFFER
  syntax keyword clConstant CL_MEM_OBJECT_IMAGE2D
  syntax keyword clConstant CL_MEM_OBJECT_IMAGE3D
  "
  " cl_mem_info
  syntax keyword clConstant CL_MEM_TYPE
  syntax keyword clConstant CL_MEM_FLAGS
  syntax keyword clConstant CL_MEM_SIZECL_MEM_HOST_PTR
  syntax keyword clConstant CL_MEM_HOST_PTR
  syntax keyword clConstant CL_MEM_MAP_COUNT
  syntax keyword clConstant CL_MEM_REFERENCE_COUNT
  syntax keyword clConstant CL_MEM_CONTEXT
  "
  " cl_image_info
  syntax keyword clConstant CL_IMAGE_FORMAT
  syntax keyword clConstant CL_IMAGE_ELEMENT_SIZE
  syntax keyword clConstant CL_IMAGE_ROW_PITCH
  syntax keyword clConstant CL_IMAGE_SLICE_PITCH
  syntax keyword clConstant CL_IMAGE_WIDTH
  syntax keyword clConstant CL_IMAGE_HEIGHT
  syntax keyword clConstant CL_IMAGE_DEPTH
  "
  " cl_addressing_mode
  syntax keyword clConstant CL_ADDRESS_NONE
  syntax keyword clConstant CL_ADDRESS_CLAMP_TO_EDGE
  syntax keyword clConstant CL_ADDRESS_CLAMP
  syntax keyword clConstant CL_ADDRESS_REPEAT
  "
  " cl_filter_mode
  syntax keyword clConstant CL_FILTER_NEAREST
  syntax keyword clConstant CL_FILTER_LINEAR
  "
  " cl_sampler_info
  syntax keyword clConstant CL_SAMPLER_REFERENCE_COUNT
  syntax keyword clConstant CL_SAMPLER_CONTEXT
  syntax keyword clConstant CL_SAMPLER_NORMALIZED_COORDS
  syntax keyword clConstant CL_SAMPLER_ADDRESSING_MODE
  syntax keyword clConstant CL_SAMPLER_FILTER_MODE
  "
  " cl_map_flags - bitfield
  syntax keyword clConstant CL_MAP_READ
  syntax keyword clConstant CL_MAP_WRITE
  "
  " cl_program_info
  syntax keyword clConstant CL_PROGRAM_REFERENCE_COUNT
  syntax keyword clConstant CL_PROGRAM_CONTEXT
  syntax keyword clConstant CL_PROGRAM_NUM_DEVICES
  syntax keyword clConstant CL_PROGRAM_DEVICES
  syntax keyword clConstant CL_PROGRAM_SOURCE
  syntax keyword clConstant CL_PROGRAM_BINARY_SIZES
  syntax keyword clConstant CL_PROGRAM_BINARIES
  "
  " cl_program_build_info
  syntax keyword clConstant CL_PROGRAM_BUILD_STATUS
  syntax keyword clConstant CL_PROGRAM_BUILD_OPTIONS
  syntax keyword clConstant CL_PROGRAM_BUILD_LOG
  "
  " cl_build_status
  syntax keyword clConstant CL_BUILD_SUCCESS
  syntax keyword clConstant CL_BUILD_NONE
  syntax keyword clConstant CL_BUILD_ERROR
  syntax keyword clConstant CL_BUILD_IN_PROGRESS
  "
  " cl_kernel_info
  syntax keyword clConstant CL_KERNEL_FUNCTION_NAME
  syntax keyword clConstant CL_KERNEL_NUM_ARGS
  syntax keyword clConstant CL_KERNEL_REFERENCE_COUNT
  syntax keyword clConstant CL_KERNEL_CONTEXT
  syntax keyword clConstant CL_KERNEL_PROGRAM
  "
  " cl_kernel_work_group_info
  syntax keyword clConstant CL_KERNEL_WORK_GROUP_SIZE
  syntax keyword clConstant CL_KERNEL_COMPILE_WORK_GROUP_SIZE
  syntax keyword clConstant CL_KERNEL_LOCAL_MEM_SIZE
  "
  " cl_event_info
  syntax keyword clConstant CL_EVENT_COMMAND_QUEUE
  syntax keyword clConstant CL_EVENT_COMMAND_TYPE
  syntax keyword clConstant CL_EVENT_REFERENCE_COUNT
  syntax keyword clConstant CL_EVENT_COMMAND_EXECUTION_STATUS
  "
  " cl_command_type
  syntax keyword clConstant CL_COMMAND_NDRANGE_KERNEL
  syntax keyword clConstant CL_COMMAND_TASK
  syntax keyword clConstant CL_COMMAND_NATIVE_KERNEL
  syntax keyword clConstant CL_COMMAND_READ_BUFFER
  syntax keyword clConstant CL_COMMAND_WRITE_BUFFER
  syntax keyword clConstant CL_COMMAND_COPY_BUFFER
  syntax keyword clConstant CL_COMMAND_READ_IMAGE
  syntax keyword clConstant CL_COMMAND_WRITE_IMAGE
  syntax keyword clConstant CL_COMMAND_COPY_IMAGE
  syntax keyword clConstant CL_COMMAND_COPY_IMAGE_TO_BUFFER
  syntax keyword clConstant CL_COMMAND_COPY_BUFFER_TO_IMAGE
  syntax keyword clConstant CL_COMMAND_MAP_BUFFER
  syntax keyword clConstant CL_COMMAND_MAP_IMAGE
  syntax keyword clConstant CL_COMMAND_UNMAP_MEM_OBJECT
  syntax keyword clConstant CL_COMMAND_MARKER
  syntax keyword clConstant CL_COMMAND_ACQUIRE_GL_OBJECTS
  syntax keyword clConstant CL_COMMAND_RELEASE_GL_OBJECTS
  "
  " command execution status
  syntax keyword clConstant CL_COMPLETE
  syntax keyword clConstant CL_RUNNING
  syntax keyword clConstant CL_SUBMITTED
  syntax keyword clConstant CL_QUEUED
  "
  " cl_profiling_info
  syntax keyword clConstant CL_PROFILING_COMMAND_QUEUED
  syntax keyword clConstant CL_PROFILING_COMMAND_SUBMIT
  syntax keyword clConstant CL_PROFILING_COMMAND_START
  syntax keyword clConstant CL_PROFILING_COMMAND_END
  "
  " from cl_platform.h
  syntax keyword clConstant CL_CHAR_BIT
  syntax keyword clConstant CL_SCHAR_MAX
  syntax keyword clConstant CL_SCHAR_MIN
  syntax keyword clConstant CL_CHAR_MAX
  syntax keyword clConstant CL_CHAR_MIN
  syntax keyword clConstant CL_UCHAR_MAX
  syntax keyword clConstant CL_SHRT_MAX
  syntax keyword clConstant CL_SHRT_MIN
  syntax keyword clConstant CL_USHRT_MAX
  syntax keyword clConstant CL_INT_MAX
  syntax keyword clConstant CL_INT_MIN
  syntax keyword clConstant CL_UINT_MAX
  syntax keyword clConstant CL_LONG_MAX
  syntax keyword clConstant CL_LONG_MIN
  syntax keyword clConstant CL_ULONG_MAX
  "
  syntax keyword clConstant CL_FLT_DIG
  syntax keyword clConstant CL_FLT_MANT_DIG
  syntax keyword clConstant CL_FLT_MAX_10_EXP
  syntax keyword clConstant CL_FLT_MAX_EXP
  syntax keyword clConstant CL_FLT_MIN_10_EXP
  syntax keyword clConstant CL_FLT_MIN_EXP
  syntax keyword clConstant CL_FLT_RADIX
  syntax keyword clConstant CL_FLT_MAX
  syntax keyword clConstant CL_FLT_MIN
  syntax keyword clConstant CL_FLT_EPSILON
  "
  syntax keyword clConstant CL_DBL_DIG
  syntax keyword clConstant CL_DBL_MANT_DIG
  syntax keyword clConstant CL_DBL_MAX_10_EXP
  syntax keyword clConstant CL_DBL_MAX_EXP
  syntax keyword clConstant CL_DBL_MIN_10_EXP
  syntax keyword clConstant CL_DBL_MIN_EXP
  syntax keyword clConstant CL_DBL_RADIX
  syntax keyword clConstant CL_DBL_MAX
  syntax keyword clConstant CL_DBL_MIN
  syntax keyword clConstant CL_DBL_EPSILON
"
"
" Errors
  syntax keyword clConstant CL_SUCCESS
  syntax keyword clConstant CL_DEVICE_NOT_FOUND
  syntax keyword clConstant CL_DEVICE_NOT_AVAILABLE
  syntax keyword clConstant CL_COMPILER_NOT_AVAILABLE
  syntax keyword clConstant CL_MEM_OBJECT_ALLOCATION_FAILURE
  syntax keyword clConstant CL_OUT_OF_RESOURCES
  syntax keyword clConstant CL_OUT_OF_HOST_MEMORY
  syntax keyword clConstant CL_PROFILING_INFO_NOT_AVAILABLE
  syntax keyword clConstant CL_MEM_COPY_OVERLAP
  syntax keyword clConstant CL_IMAGE_FORMAT_MISMATCH
  syntax keyword clConstant CL_IMAGE_FORMAT_NOT_SUPPORTED
  syntax keyword clConstant CL_BUILD_PROGRAM_FAILURE
  syntax keyword clConstant CL_MAP_FAILURE
  "  
  syntax keyword clConstant CL_INVALID_VALUE
  syntax keyword clConstant CL_INVALID_DEVICE_TYPE
  syntax keyword clConstant CL_INVALID_PLATFORM
  syntax keyword clConstant CL_INVALID_DEVICE
  syntax keyword clConstant CL_INVALID_CONTEXT
  syntax keyword clConstant CL_INVALID_QUEUE_PROPERTIES
  syntax keyword clConstant CL_INVALID_COMMAND_QUEUE
  syntax keyword clConstant CL_INVALID_HOST_PTR
  syntax keyword clConstant CL_INVALID_MEM_OBJECT
  syntax keyword clConstant CL_INVALID_IMAGE_FORMAT_DESCRIPTOR
  syntax keyword clConstant CL_INVALID_IMAGE_SIZE
  syntax keyword clConstant CL_INVALID_SAMPLER
  syntax keyword clConstant CL_INVALID_BINARY
  syntax keyword clConstant CL_INVALID_BUILD_OPTIONS
  syntax keyword clConstant CL_INVALID_PROGRAM
  syntax keyword clConstant CL_INVALID_PROGRAM_EXECUTABLE
  syntax keyword clConstant CL_INVALID_KERNEL_NAME
  syntax keyword clConstant CL_INVALID_KERNEL_DEFINITION
  syntax keyword clConstant CL_INVALID_KERNEL
  syntax keyword clConstant CL_INVALID_ARG_INDEX
  syntax keyword clConstant CL_INVALID_ARG_VALUE
  syntax keyword clConstant CL_INVALID_ARG_SIZE
  syntax keyword clConstant CL_INVALID_KERNEL_ARGS
  syntax keyword clConstant CL_INVALID_WORK_DIMENSION
  syntax keyword clConstant CL_INVALID_WORK_GROUP_SIZE
  syntax keyword clConstant CL_INVALID_WORK_ITEM_SIZE
  syntax keyword clConstant CL_INVALID_GLOBAL_OFFSET
  syntax keyword clConstant CL_INVALID_EVENT_WAIT_LIST
  syntax keyword clConstant CL_INVALID_EVENT
  syntax keyword clConstant CL_INVALID_OPERATION
  syntax keyword clConstant CL_INVALID_GL_OBJECT
  syntax keyword clConstant CL_INVALID_BUFFER_SIZE
  syntax keyword clConstant CL_INVALID_MIP_LEVEL
  syntax keyword clConstant CL_INVALID_GLOBAL_WORK_SIZE
"
"
" Functions
  "
  " Platform API
  syntax keyword clFunction clGetPlatformIDs
  syntax keyword clFunction clGetPlatformInfo
  "
  " Device APIs
  syntax keyword clFunction clGetDeviceIDs
  syntax keyword clFunction clGetDeviceInfo
  "
  " Context APIs
  syntax keyword clFunction clCreateContext
  syntax keyword clFunction clCreateContextFromType
  syntax keyword clFunction clReleaseContext
  syntax keyword clFunction clGetContextInfo
  "
  " Command Queue APIs
  syntax keyword clFunction clCreateCommandQueue
  syntax keyword clFunction clRetainCommandQueue
  syntax keyword clFunction clReleaseCommandQueue
  syntax keyword clFunction clGetCommandQueueInfo
  syntax keyword clFunction clSetCommandQueueProperty
  "
  " Memory Object APIs
  syntax keyword clFunction clCreateBuffer
  syntax keyword clFunction clCreateImage2D
  syntax keyword clFunction clCreateImage3D
  syntax keyword clFunction clRetainMemObject
  syntax keyword clFunction clReleaseMemObject
  syntax keyword clFunction clGetSupportedImageFormats
  syntax keyword clFunction clGetMemObjectInfo
  syntax keyword clFunction clGetImageInfo
  "
  " Sampler APIs
  syntax keyword clFunction clCreateSampler
  syntax keyword clFunction clRetainSampler
  syntax keyword clFunction clReleaseSampler
  syntax keyword clFunction clGetSamplerInfo
  "
  " Program Object APIs
  syntax keyword clFunction clCreateProgramWithSource
  syntax keyword clFunction clCreateProgramWithBinary
  syntax keyword clFunction clRetainProgram
  syntax keyword clFunction clReleaseProgram
  syntax keyword clFunction clBuildProgram
  syntax keyword clFunction clUnloadCompiler
  syntax keyword clFunction clGetProgramInfo
  syntax keyword clFunction clGetProgramBuildInfo
  "
  " Kernel Object APIs
  syntax keyword clFunction clCreateKernel
  syntax keyword clFunction clCreateKernelsInProgram
  syntax keyword clFunction clRetainKernel
  syntax keyword clFunction clReleaseKernel
  syntax keyword clFunction clSetKernelArg
  syntax keyword clFunction clGetKernelInfo
  syntax keyword clFunction clGetKernelWorkGroupInfo
  "
  " Event Object APIs
  syntax keyword clFunction clWaitForEvents
  syntax keyword clFunction clGetEventInfo
  syntax keyword clFunction clRetainEvent
  syntax keyword clFunction clReleaseEvent
  "
  " Profiling APIs
  syntax keyword clFunction clGetEventProfilingInfo
  "
  " Flush and Finish APIs
  syntax keyword clFunction clFlush
  syntax keyword clFunction clFinish
  "
  " Enqueued Commands APIs
  syntax keyword clFunction clEnqueueReadBuffer
  syntax keyword clFunction clEnqueueWriteBuffer
  syntax keyword clFunction clEnqueueCopyBuffer
  syntax keyword clFunction clEnqueueReadImage
  syntax keyword clFunction clEnqueueWriteImage
  syntax keyword clFunction clEnqueueCopyImage
  syntax keyword clFunction clEnqueueCopyImageToBuffer
  syntax keyword clFunction clEnqueueCopyBufferToImage
  syntax keyword clFunction clEnqueueMapBuffer
  syntax keyword clFunction clEnqueueMapImage
  syntax keyword clFunction clEnqueueUnmapMemObject
  syntax keyword clFunction clEnqueueNDRangeKernel
  syntax keyword clFunction clEnqueueTask
  syntax keyword clFunction clEnqueueNativeKernel
  syntax keyword clFunction clEnqueueMarker
  syntax keyword clFunction clEnqueueWaitForEvents
  syntax keyword clFunction clEnqueueBarrier
" 
"
" cl_gl.h
"
if !exists("c_opencl_no_gl")
"
" Data Types
  syntax keyword clType cl_gl_object_type
  syntax keyword clType cl_gl_texture_info
  syntax keyword clType cl_gl_platform_info
  syntax keyword clType cl_gl_context_info
"
"
" Constants
  syntax keyword clConstant CL_GL_OBJECT_BUFFER
  syntax keyword clConstant CL_GL_OBJECT_TEXTURE2D
  syntax keyword clConstant CL_GL_OBJECT_TEXTURE3D
  syntax keyword clConstant CL_GL_OBJECT_RENDERBUFFER
  "
  " cl_gl_object_type 
  syntax keyword clConstant CL_GL_TEXTURE_TARGET
  syntax keyword clConstant CL_GL_MIPMAP_LEVEL
  "
  " cl_khr_gl_sharing
  syntax keyword clConstant CL_CURRENT_DEVICE_FOR_GL_CONTEXT_KHR
  syntax keyword clConstant CL_DEVICES_FOR_GL_CONTEXT_KHR
  syntax keyword clConstant CL_GL_CONTEXT_KHR
  syntax keyword clConstant CL_EGL_DISPLAY_KHR
  syntax keyword clConstant CL_GLX_DISPLAY_KHR
  syntax keyword clConstant CL_WGL_HDC_KHR
  syntax keyword clConstant CL_CGL_SHAREGROUP_KHR
"
"
" Errors
  syntax keyword clConstant CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR
"
"
" Functions  
  syntax keyword clFunction clCreateFromGLBuffer
  syntax keyword clFunction clCreateFromGLTexture2D
  syntax keyword clFunction clCreateFromGLTexture3D
  syntax keyword clFunction clCreateFromGLRenderbuffer
  syntax keyword clFunction clGetGLObjectInfo
  syntax keyword clFunction clGetGLTextureInfo
  syntax keyword clFunction clEnqueueAcquireGLObjects
  syntax keyword clFunction clEnqueueReleaseGLObjects
  syntax keyword clFunction clGetGLContextInfoKHR
"
endif
"
" Default highlighting
if version >= 508 || !exists("did_c_opencl_syntax_inits")
  if version < 508
    let did_c_opencl_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink clType                Type
  HiLink clFunction            Function
  HiLink clConstant            Constant
  delcommand HiLink
endif

" vim: fdm=marker:
