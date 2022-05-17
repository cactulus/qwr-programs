; ModuleID = 'test.ll'
source_filename = "test.ll"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%Array = type { i8*, i64, i64 }
%Window = type { i8*, i32, i32 }

@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@GL_DEPTH_BUFFER_BIT = local_unnamed_addr constant i32 256
@GL_STENCIL_BUFFER_BIT = local_unnamed_addr constant i32 1024
@GL_COLOR_BUFFER_BIT = local_unnamed_addr constant i32 16384
@GL_POINTS = local_unnamed_addr constant i32 0
@GL_LINES = local_unnamed_addr constant i32 1
@GL_LINE_LOOP = local_unnamed_addr constant i32 2
@GL_LINE_STRIP = local_unnamed_addr constant i32 3
@GL_TRIANGLES = local_unnamed_addr constant i32 4
@GL_TRIANGLE_STRIP = local_unnamed_addr constant i32 5
@GL_TRIANGLE_FAN = local_unnamed_addr constant i32 6
@GL_NEVER = local_unnamed_addr constant i32 512
@GL_LESS = local_unnamed_addr constant i32 513
@GL_EQUAL = local_unnamed_addr constant i32 514
@GL_LEQUAL = local_unnamed_addr constant i32 515
@GL_GREATER = local_unnamed_addr constant i32 516
@GL_NOTEQUAL = local_unnamed_addr constant i32 517
@GL_GEQUAL = local_unnamed_addr constant i32 518
@GL_ALWAYS = local_unnamed_addr constant i32 519
@GL_SRC_COLOR = local_unnamed_addr constant i32 768
@GL_ONE_MINUS_SRC_COLOR = local_unnamed_addr constant i32 769
@GL_SRC_ALPHA = local_unnamed_addr constant i32 770
@GL_ONE_MINUS_SRC_ALPHA = local_unnamed_addr constant i32 771
@GL_DST_ALPHA = local_unnamed_addr constant i32 772
@GL_ONE_MINUS_DST_ALPHA = local_unnamed_addr constant i32 773
@GL_DST_COLOR = local_unnamed_addr constant i32 774
@GL_ONE_MINUS_DST_COLOR = local_unnamed_addr constant i32 775
@GL_SRC_ALPHA_SATURATE = local_unnamed_addr constant i32 776
@GL_CLIP_PLANE0 = local_unnamed_addr constant i32 12288
@GL_CLIP_PLANE1 = local_unnamed_addr constant i32 12289
@GL_CLIP_PLANE2 = local_unnamed_addr constant i32 12290
@GL_CLIP_PLANE3 = local_unnamed_addr constant i32 12291
@GL_CLIP_PLANE4 = local_unnamed_addr constant i32 12292
@GL_CLIP_PLANE5 = local_unnamed_addr constant i32 12293
@GL_FRONT = local_unnamed_addr constant i32 1028
@GL_BACK = local_unnamed_addr constant i32 1029
@GL_FRONT_AND_BACK = local_unnamed_addr constant i32 1032
@GL_FOG = local_unnamed_addr constant i32 2912
@GL_LIGHTING = local_unnamed_addr constant i32 2896
@GL_TEXTURE_2D = local_unnamed_addr constant i32 3553
@GL_CULL_FACE = local_unnamed_addr constant i32 2884
@GL_ALPHA_TEST = local_unnamed_addr constant i32 3008
@GL_BLEND = local_unnamed_addr constant i32 3042
@GL_COLOR_LOGIC_OP = local_unnamed_addr constant i32 3058
@GL_DITHER = local_unnamed_addr constant i32 3024
@GL_STENCIL_TEST = local_unnamed_addr constant i32 2960
@GL_DEPTH_TEST = local_unnamed_addr constant i32 2929
@GL_POINT_SMOOTH = local_unnamed_addr constant i32 2832
@GL_LINE_SMOOTH = local_unnamed_addr constant i32 2848
@GL_SCISSOR_TEST = local_unnamed_addr constant i32 3089
@GL_COLOR_MATERIAL = local_unnamed_addr constant i32 2903
@GL_NORMALIZE = local_unnamed_addr constant i32 2977
@GL_RESCALE_NORMAL = local_unnamed_addr constant i32 32826
@GL_POLYGON_OFFSET_FILL = local_unnamed_addr constant i32 32823
@GL_VERTEX_ARRAY = local_unnamed_addr constant i32 32884
@GL_NORMAL_ARRAY = local_unnamed_addr constant i32 32885
@GL_COLOR_ARRAY = local_unnamed_addr constant i32 32886
@GL_TEXTURE_COORD_ARRAY = local_unnamed_addr constant i32 32888
@GL_MULTISAMPLE = local_unnamed_addr constant i32 32925
@GL_SAMPLE_ALPHA_TO_COVERAGE = local_unnamed_addr constant i32 32926
@GL_SAMPLE_ALPHA_TO_ONE = local_unnamed_addr constant i32 32927
@GL_SAMPLE_COVERAGE = local_unnamed_addr constant i32 32928
@GL_INVALID_ENUM = local_unnamed_addr constant i32 1280
@GL_INVALID_VALUE = local_unnamed_addr constant i32 1281
@GL_INVALID_OPERATION = local_unnamed_addr constant i32 1282
@GL_STACK_OVERFLOW = local_unnamed_addr constant i32 1283
@GL_STACK_UNDERFLOW = local_unnamed_addr constant i32 1284
@GL_OUT_OF_MEMORY = local_unnamed_addr constant i32 1285
@GL_EXP = local_unnamed_addr constant i32 2048
@GL_EXP2 = local_unnamed_addr constant i32 2049
@GL_FOG_DENSITY = local_unnamed_addr constant i32 2914
@GL_FOG_START = local_unnamed_addr constant i32 2915
@GL_FOG_END = local_unnamed_addr constant i32 2916
@GL_FOG_MODE = local_unnamed_addr constant i32 2917
@GL_FOG_COLOR = local_unnamed_addr constant i32 2918
@GL_CW = local_unnamed_addr constant i32 2304
@GL_CCW = local_unnamed_addr constant i32 2305
@GL_CURRENT_COLOR = local_unnamed_addr constant i32 2816
@GL_CURRENT_NORMAL = local_unnamed_addr constant i32 2818
@GL_CURRENT_TEXTURE_COORDS = local_unnamed_addr constant i32 2819
@GL_POINT_SIZE = local_unnamed_addr constant i32 2833
@GL_POINT_SIZE_MIN = local_unnamed_addr constant i32 33062
@GL_POINT_SIZE_MAX = local_unnamed_addr constant i32 33063
@GL_POINT_FADE_THRESHOLD_SIZE = local_unnamed_addr constant i32 33064
@GL_POINT_DISTANCE_ATTENUATION = local_unnamed_addr constant i32 33065
@GL_SMOOTH_POINT_SIZE_RANGE = local_unnamed_addr constant i32 2834
@GL_LINE_WIDTH = local_unnamed_addr constant i32 2849
@GL_SMOOTH_LINE_WIDTH_RANGE = local_unnamed_addr constant i32 2850
@GL_ALIASED_POINT_SIZE_RANGE = local_unnamed_addr constant i32 33901
@GL_ALIASED_LINE_WIDTH_RANGE = local_unnamed_addr constant i32 33902
@GL_CULL_FACE_MODE = local_unnamed_addr constant i32 2885
@GL_FRONT_FACE = local_unnamed_addr constant i32 2886
@GL_SHADE_MODEL = local_unnamed_addr constant i32 2900
@GL_DEPTH_RANGE = local_unnamed_addr constant i32 2928
@GL_DEPTH_WRITEMASK = local_unnamed_addr constant i32 2930
@GL_DEPTH_CLEAR_VALUE = local_unnamed_addr constant i32 2931
@GL_DEPTH_FUNC = local_unnamed_addr constant i32 2932
@GL_STENCIL_CLEAR_VALUE = local_unnamed_addr constant i32 2961
@GL_STENCIL_FUNC = local_unnamed_addr constant i32 2962
@GL_STENCIL_VALUE_MASK = local_unnamed_addr constant i32 2963
@GL_STENCIL_FAIL = local_unnamed_addr constant i32 2964
@GL_STENCIL_PASS_DEPTH_FAIL = local_unnamed_addr constant i32 2965
@GL_STENCIL_PASS_DEPTH_PASS = local_unnamed_addr constant i32 2966
@GL_STENCIL_REF = local_unnamed_addr constant i32 2967
@GL_STENCIL_WRITEMASK = local_unnamed_addr constant i32 2968
@GL_MATRIX_MODE = local_unnamed_addr constant i32 2976
@GL_VIEWPORT = local_unnamed_addr constant i32 2978
@GL_MODELVIEW_STACK_DEPTH = local_unnamed_addr constant i32 2979
@GL_PROJECTION_STACK_DEPTH = local_unnamed_addr constant i32 2980
@GL_TEXTURE_STACK_DEPTH = local_unnamed_addr constant i32 2981
@GL_MODELVIEW_MATRIX = local_unnamed_addr constant i32 2982
@GL_PROJECTION_MATRIX = local_unnamed_addr constant i32 2983
@GL_TEXTURE_MATRIX = local_unnamed_addr constant i32 2984
@GL_ALPHA_TEST_FUNC = local_unnamed_addr constant i32 3009
@GL_ALPHA_TEST_REF = local_unnamed_addr constant i32 3010
@GL_BLEND_DST = local_unnamed_addr constant i32 3040
@GL_BLEND_SRC = local_unnamed_addr constant i32 3041
@GL_LOGIC_OP_MODE = local_unnamed_addr constant i32 3056
@GL_SCISSOR_BOX = local_unnamed_addr constant i32 3088
@GL_COLOR_CLEAR_VALUE = local_unnamed_addr constant i32 3106
@GL_COLOR_WRITEMASK = local_unnamed_addr constant i32 3107
@GL_UNPACK_ALIGNMENT = local_unnamed_addr constant i32 3317
@GL_PACK_ALIGNMENT = local_unnamed_addr constant i32 3333
@GL_MAX_LIGHTS = local_unnamed_addr constant i32 3377
@GL_MAX_CLIP_PLANES = local_unnamed_addr constant i32 3378
@GL_MAX_TEXTURE_SIZE = local_unnamed_addr constant i32 3379
@GL_MAX_MODELVIEW_STACK_DEPTH = local_unnamed_addr constant i32 3382
@GL_MAX_PROJECTION_STACK_DEPTH = local_unnamed_addr constant i32 3384
@GL_MAX_TEXTURE_STACK_DEPTH = local_unnamed_addr constant i32 3385
@GL_MAX_VIEWPORT_DIMS = local_unnamed_addr constant i32 3386
@GL_MAX_TEXTURE_UNITS = local_unnamed_addr constant i32 34018
@GL_SUBPIXEL_BITS = local_unnamed_addr constant i32 3408
@GL_RED_BITS = local_unnamed_addr constant i32 3410
@GL_GREEN_BITS = local_unnamed_addr constant i32 3411
@GL_BLUE_BITS = local_unnamed_addr constant i32 3412
@GL_ALPHA_BITS = local_unnamed_addr constant i32 3413
@GL_DEPTH_BITS = local_unnamed_addr constant i32 3414
@GL_STENCIL_BITS = local_unnamed_addr constant i32 3415
@GL_POLYGON_OFFSET_UNITS = local_unnamed_addr constant i32 10752
@GL_POLYGON_OFFSET_FACTOR = local_unnamed_addr constant i32 32824
@GL_TEXTURE_BINDING_2D = local_unnamed_addr constant i32 32873
@GL_VERTEX_ARRAY_SIZE = local_unnamed_addr constant i32 32890
@GL_VERTEX_ARRAY_TYPE = local_unnamed_addr constant i32 32891
@GL_VERTEX_ARRAY_STRIDE = local_unnamed_addr constant i32 32892
@GL_NORMAL_ARRAY_TYPE = local_unnamed_addr constant i32 32894
@GL_NORMAL_ARRAY_STRIDE = local_unnamed_addr constant i32 32895
@GL_COLOR_ARRAY_SIZE = local_unnamed_addr constant i32 32897
@GL_COLOR_ARRAY_TYPE = local_unnamed_addr constant i32 32898
@GL_COLOR_ARRAY_STRIDE = local_unnamed_addr constant i32 32899
@GL_TEXTURE_COORD_ARRAY_SIZE = local_unnamed_addr constant i32 32904
@GL_TEXTURE_COORD_ARRAY_TYPE = local_unnamed_addr constant i32 32905
@GL_TEXTURE_COORD_ARRAY_STRIDE = local_unnamed_addr constant i32 32906
@GL_VERTEX_ARRAY_POINTER = local_unnamed_addr constant i32 32910
@GL_NORMAL_ARRAY_POINTER = local_unnamed_addr constant i32 32911
@GL_COLOR_ARRAY_POINTER = local_unnamed_addr constant i32 32912
@GL_TEXTURE_COORD_ARRAY_POINTER = local_unnamed_addr constant i32 32914
@GL_SAMPLE_BUFFERS = local_unnamed_addr constant i32 32936
@GL_SAMPLES = local_unnamed_addr constant i32 32937
@GL_SAMPLE_COVERAGE_VALUE = local_unnamed_addr constant i32 32938
@GL_SAMPLE_COVERAGE_INVERT = local_unnamed_addr constant i32 32939
@GL_NUM_COMPRESSED_TEXTURE_FORMATS = local_unnamed_addr constant i32 34466
@GL_COMPRESSED_TEXTURE_FORMATS = local_unnamed_addr constant i32 34467
@GL_DONT_CARE = local_unnamed_addr constant i32 4352
@GL_FASTEST = local_unnamed_addr constant i32 4353
@GL_NICEST = local_unnamed_addr constant i32 4354
@GL_PERSPECTIVE_CORRECTION_HINT = local_unnamed_addr constant i32 3152
@GL_POINT_SMOOTH_HINT = local_unnamed_addr constant i32 3153
@GL_LINE_SMOOTH_HINT = local_unnamed_addr constant i32 3154
@GL_FOG_HINT = local_unnamed_addr constant i32 3156
@GL_GENERATE_MIPMAP_HINT = local_unnamed_addr constant i32 33170
@GL_LIGHT_MODEL_AMBIENT = local_unnamed_addr constant i32 2899
@GL_LIGHT_MODEL_TWO_SIDE = local_unnamed_addr constant i32 2898
@GL_AMBIENT = local_unnamed_addr constant i32 4608
@GL_DIFFUSE = local_unnamed_addr constant i32 4609
@GL_SPECULAR = local_unnamed_addr constant i32 4610
@GL_POSITION = local_unnamed_addr constant i32 4611
@GL_SPOT_DIRECTION = local_unnamed_addr constant i32 4612
@GL_SPOT_EXPONENT = local_unnamed_addr constant i32 4613
@GL_SPOT_CUTOFF = local_unnamed_addr constant i32 4614
@GL_CONSTANT_ATTENUATION = local_unnamed_addr constant i32 4615
@GL_LINEAR_ATTENUATION = local_unnamed_addr constant i32 4616
@GL_QUADRATIC_ATTENUATION = local_unnamed_addr constant i32 4617
@GL_BYTE = local_unnamed_addr constant i32 5120
@GL_UNSIGNED_BYTE = local_unnamed_addr constant i32 5121
@GL_SHORT = local_unnamed_addr constant i32 5122
@GL_UNSIGNED_SHORT = local_unnamed_addr constant i32 5123
@GL_FLOAT = local_unnamed_addr constant i32 5126
@GL_FIXED = local_unnamed_addr constant i32 5132
@GL_CLEAR = local_unnamed_addr constant i32 5376
@GL_AND = local_unnamed_addr constant i32 5377
@GL_AND_REVERSE = local_unnamed_addr constant i32 5378
@GL_COPY = local_unnamed_addr constant i32 5379
@GL_AND_INVERTED = local_unnamed_addr constant i32 5380
@GL_NOOP = local_unnamed_addr constant i32 5381
@GL_XOR = local_unnamed_addr constant i32 5382
@GL_OR = local_unnamed_addr constant i32 5383
@GL_NOR = local_unnamed_addr constant i32 5384
@GL_EQUIV = local_unnamed_addr constant i32 5385
@GL_INVERT = local_unnamed_addr constant i32 5386
@GL_OR_REVERSE = local_unnamed_addr constant i32 5387
@GL_COPY_INVERTED = local_unnamed_addr constant i32 5388
@GL_OR_INVERTED = local_unnamed_addr constant i32 5389
@GL_NAND = local_unnamed_addr constant i32 5390
@GL_SET = local_unnamed_addr constant i32 5391
@GL_EMISSION = local_unnamed_addr constant i32 5632
@GL_SHININESS = local_unnamed_addr constant i32 5633
@GL_AMBIENT_AND_DIFFUSE = local_unnamed_addr constant i32 5634
@GL_MODELVIEW = local_unnamed_addr constant i32 5888
@GL_PROJECTION = local_unnamed_addr constant i32 5889
@GL_TEXTURE = local_unnamed_addr constant i32 5890
@GL_ALPHA = local_unnamed_addr constant i32 6406
@GL_RGB = local_unnamed_addr constant i32 6407
@GL_RGBA = local_unnamed_addr constant i32 6408
@GL_LUMINANCE = local_unnamed_addr constant i32 6409
@GL_LUMINANCE_ALPHA = local_unnamed_addr constant i32 6410
@GL_UNSIGNED_SHORT_4_4_4_4 = local_unnamed_addr constant i32 32819
@GL_UNSIGNED_SHORT_5_5_5_1 = local_unnamed_addr constant i32 32820
@GL_UNSIGNED_SHORT_5_6_5 = local_unnamed_addr constant i32 33635
@GL_FLAT = local_unnamed_addr constant i32 7424
@GL_SMOOTH = local_unnamed_addr constant i32 7425
@GL_KEEP = local_unnamed_addr constant i32 7680
@GL_REPLACE = local_unnamed_addr constant i32 7681
@GL_INCR = local_unnamed_addr constant i32 7682
@GL_DECR = local_unnamed_addr constant i32 7683
@GL_VENDOR = local_unnamed_addr constant i32 7936
@GL_RENDERER = local_unnamed_addr constant i32 7937
@GL_VERSION = local_unnamed_addr constant i32 7938
@GL_EXTENSIONS = local_unnamed_addr constant i32 7939
@GL_MODULATE = local_unnamed_addr constant i32 8448
@GL_DECAL = local_unnamed_addr constant i32 8449
@GL_ADD = local_unnamed_addr constant i32 260
@GL_TEXTURE_ENV_MODE = local_unnamed_addr constant i32 8704
@GL_TEXTURE_ENV_COLOR = local_unnamed_addr constant i32 8705
@GL_TEXTURE_ENV = local_unnamed_addr constant i32 8960
@GL_NEAREST = local_unnamed_addr constant i32 9728
@GL_LINEAR = local_unnamed_addr constant i32 9729
@GL_NEAREST_MIPMAP_NEAREST = local_unnamed_addr constant i32 9984
@GL_LINEAR_MIPMAP_NEAREST = local_unnamed_addr constant i32 9985
@GL_NEAREST_MIPMAP_LINEAR = local_unnamed_addr constant i32 9986
@GL_LINEAR_MIPMAP_LINEAR = local_unnamed_addr constant i32 9987
@GL_TEXTURE_MAG_FILTER = local_unnamed_addr constant i32 10240
@GL_TEXTURE_MIN_FILTER = local_unnamed_addr constant i32 10241
@GL_TEXTURE_WRAP_S = local_unnamed_addr constant i32 10242
@GL_TEXTURE_WRAP_T = local_unnamed_addr constant i32 10243
@GL_GENERATE_MIPMAP = local_unnamed_addr constant i32 33169
@GL_TEXTURE0 = local_unnamed_addr constant i32 33984
@GL_TEXTURE1 = local_unnamed_addr constant i32 33985
@GL_TEXTURE2 = local_unnamed_addr constant i32 33986
@GL_TEXTURE3 = local_unnamed_addr constant i32 33987
@GL_TEXTURE4 = local_unnamed_addr constant i32 33988
@GL_TEXTURE5 = local_unnamed_addr constant i32 33989
@GL_TEXTURE6 = local_unnamed_addr constant i32 33990
@GL_TEXTURE7 = local_unnamed_addr constant i32 33991
@GL_TEXTURE8 = local_unnamed_addr constant i32 33992
@GL_TEXTURE9 = local_unnamed_addr constant i32 33993
@GL_TEXTURE10 = local_unnamed_addr constant i32 33994
@GL_TEXTURE11 = local_unnamed_addr constant i32 33995
@GL_TEXTURE12 = local_unnamed_addr constant i32 33996
@GL_TEXTURE13 = local_unnamed_addr constant i32 33997
@GL_TEXTURE14 = local_unnamed_addr constant i32 33998
@GL_TEXTURE15 = local_unnamed_addr constant i32 33999
@GL_TEXTURE16 = local_unnamed_addr constant i32 34000
@GL_TEXTURE17 = local_unnamed_addr constant i32 34001
@GL_TEXTURE18 = local_unnamed_addr constant i32 34002
@GL_TEXTURE19 = local_unnamed_addr constant i32 34003
@GL_TEXTURE20 = local_unnamed_addr constant i32 34004
@GL_TEXTURE21 = local_unnamed_addr constant i32 34005
@GL_TEXTURE22 = local_unnamed_addr constant i32 34006
@GL_TEXTURE23 = local_unnamed_addr constant i32 34007
@GL_TEXTURE24 = local_unnamed_addr constant i32 34008
@GL_TEXTURE25 = local_unnamed_addr constant i32 34009
@GL_TEXTURE26 = local_unnamed_addr constant i32 34010
@GL_TEXTURE27 = local_unnamed_addr constant i32 34011
@GL_TEXTURE28 = local_unnamed_addr constant i32 34012
@GL_TEXTURE29 = local_unnamed_addr constant i32 34013
@GL_TEXTURE30 = local_unnamed_addr constant i32 34014
@GL_TEXTURE31 = local_unnamed_addr constant i32 34015
@GL_ACTIVE_TEXTURE = local_unnamed_addr constant i32 34016
@GL_CLIENT_ACTIVE_TEXTURE = local_unnamed_addr constant i32 34017
@GL_REPEAT = local_unnamed_addr constant i32 10497
@GL_CLAMP_TO_EDGE = local_unnamed_addr constant i32 33071
@GL_LIGHT0 = local_unnamed_addr constant i32 16384
@GL_LIGHT1 = local_unnamed_addr constant i32 16385
@GL_LIGHT2 = local_unnamed_addr constant i32 16386
@GL_LIGHT3 = local_unnamed_addr constant i32 16387
@GL_LIGHT4 = local_unnamed_addr constant i32 16388
@GL_LIGHT5 = local_unnamed_addr constant i32 16389
@GL_LIGHT6 = local_unnamed_addr constant i32 16390
@GL_LIGHT7 = local_unnamed_addr constant i32 16391
@GL_ARRAY_BUFFER = local_unnamed_addr constant i32 34962
@GL_ELEMENT_ARRAY_BUFFER = local_unnamed_addr constant i32 34963
@GL_ARRAY_BUFFER_BINDING = local_unnamed_addr constant i32 34964
@GL_ELEMENT_ARRAY_BUFFER_BINDING = local_unnamed_addr constant i32 34965
@GL_VERTEX_ARRAY_BUFFER_BINDING = local_unnamed_addr constant i32 34966
@GL_NORMAL_ARRAY_BUFFER_BINDING = local_unnamed_addr constant i32 34967
@GL_COLOR_ARRAY_BUFFER_BINDING = local_unnamed_addr constant i32 34968
@GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = local_unnamed_addr constant i32 34970
@GL_STATIC_DRAW = local_unnamed_addr constant i32 35044
@GL_DYNAMIC_DRAW = local_unnamed_addr constant i32 35048
@GL_BUFFER_SIZE = local_unnamed_addr constant i32 34660
@GL_BUFFER_USAGE = local_unnamed_addr constant i32 34661
@GL_SUBTRACT = local_unnamed_addr constant i32 34023
@GL_COMBINE = local_unnamed_addr constant i32 34160
@GL_COMBINE_RGB = local_unnamed_addr constant i32 34161
@GL_COMBINE_ALPHA = local_unnamed_addr constant i32 34162
@GL_RGB_SCALE = local_unnamed_addr constant i32 34163
@GL_ADD_SIGNED = local_unnamed_addr constant i32 34164
@GL_INTERPOLATE = local_unnamed_addr constant i32 34165
@GL_CONSTANT = local_unnamed_addr constant i32 34166
@GL_PRIMARY_COLOR = local_unnamed_addr constant i32 34167
@GL_PREVIOUS = local_unnamed_addr constant i32 34168
@GL_OPERAND0_RGB = local_unnamed_addr constant i32 34192
@GL_OPERAND1_RGB = local_unnamed_addr constant i32 34193
@GL_OPERAND2_RGB = local_unnamed_addr constant i32 34194
@GL_OPERAND0_ALPHA = local_unnamed_addr constant i32 34200
@GL_OPERAND1_ALPHA = local_unnamed_addr constant i32 34201
@GL_OPERAND2_ALPHA = local_unnamed_addr constant i32 34202
@GL_ALPHA_SCALE = local_unnamed_addr constant i32 3356
@GL_SRC0_RGB = local_unnamed_addr constant i32 34176
@GL_SRC1_RGB = local_unnamed_addr constant i32 34177
@GL_SRC2_RGB = local_unnamed_addr constant i32 34178
@GL_SRC0_ALPHA = local_unnamed_addr constant i32 34184
@GL_SRC1_ALPHA = local_unnamed_addr constant i32 34185
@GL_SRC2_ALPHA = local_unnamed_addr constant i32 34186
@GL_DOT3_RGB = local_unnamed_addr constant i32 34478
@GL_DOT3_RGBA = local_unnamed_addr constant i32 34479
@GL_IMPLEMENTATION_COLOR_READ_TYPE_OES = local_unnamed_addr constant i32 35738
@GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES = local_unnamed_addr constant i32 35739
@GL_PALETTE4_RGB8_OES = local_unnamed_addr constant i32 35728
@GL_PALETTE4_RGBA8_OES = local_unnamed_addr constant i32 35729
@GL_PALETTE4_R5_G6_B5_OES = local_unnamed_addr constant i32 35730
@GL_PALETTE4_RGBA4_OES = local_unnamed_addr constant i32 35731
@GL_PALETTE4_RGB5_A1_OES = local_unnamed_addr constant i32 35732
@GL_PALETTE8_RGB8_OES = local_unnamed_addr constant i32 35733
@GL_PALETTE8_RGBA8_OES = local_unnamed_addr constant i32 35734
@GL_PALETTE8_R5_G6_B5_OES = local_unnamed_addr constant i32 35735
@GL_PALETTE8_RGBA4_OES = local_unnamed_addr constant i32 35736
@GL_PALETTE8_RGB5_A1_OES = local_unnamed_addr constant i32 35737
@GL_POINT_SIZE_ARRAY_OES = local_unnamed_addr constant i32 35740
@GL_POINT_SIZE_ARRAY_TYPE_OES = local_unnamed_addr constant i32 35210
@GL_POINT_SIZE_ARRAY_STRIDE_OES = local_unnamed_addr constant i32 35211
@GL_POINT_SIZE_ARRAY_POINTER_OES = local_unnamed_addr constant i32 35212
@GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES = local_unnamed_addr constant i32 35743
@GL_POINT_SPRITE_OES = local_unnamed_addr constant i32 34913
@GL_COORD_REPLACE_OES = local_unnamed_addr constant i32 34914
@GL_COMPILE_STATUS = local_unnamed_addr constant i32 35713
@GL_VERTEX_SHADER = local_unnamed_addr constant i32 35633
@GL_FRAGMENT_SHADER = local_unnamed_addr constant i32 35632
@GLEW_OK = local_unnamed_addr constant i32 0
@GLFW_MOD_SHIFT = local_unnamed_addr constant i32 1
@GLFW_MOD_CONTROL = local_unnamed_addr constant i32 2
@GLFW_MOD_ALT = local_unnamed_addr constant i32 4
@GLFW_MOD_SUPER = local_unnamed_addr constant i32 8
@GLFW_MOD_CAPS_LOCK = local_unnamed_addr constant i32 16
@GLFW_MOD_NUM_LOCK = local_unnamed_addr constant i32 32
@GLFW_NOT_INITIALIZED = local_unnamed_addr constant i32 65537
@GLFW_NO_CURRENT_CONTEXT = local_unnamed_addr constant i32 65538
@GLFW_INVALID_ENUM = local_unnamed_addr constant i32 65539
@GLFW_INVALID_VALUE = local_unnamed_addr constant i32 65540
@GLFW_OUT_OF_MEMORY = local_unnamed_addr constant i32 65541
@GLFW_API_UNAVAILABLE = local_unnamed_addr constant i32 65542
@GLFW_VERSION_UNAVAILABLE = local_unnamed_addr constant i32 65543
@GLFW_PLATFORM_ERROR = local_unnamed_addr constant i32 65544
@GLFW_FORMAT_UNAVAILABLE = local_unnamed_addr constant i32 65545
@GLFW_NO_WINDOW_CONTEXT = local_unnamed_addr constant i32 65546
@GLFW_FOCUSED = local_unnamed_addr constant i32 131073
@GLFW_ICONIFIED = local_unnamed_addr constant i32 131074
@GLFW_RESIZABLE = local_unnamed_addr constant i32 131075
@GLFW_VISIBLE = local_unnamed_addr constant i32 131076
@GLFW_DECORATED = local_unnamed_addr constant i32 131077
@GLFW_AUTO_ICONIFY = local_unnamed_addr constant i32 131078
@GLFW_FLOATING = local_unnamed_addr constant i32 131079
@GLFW_MAXIMIZED = local_unnamed_addr constant i32 131080
@GLFW_CENTER_CURSOR = local_unnamed_addr constant i32 131081
@GLFW_TRANSPARENT_FRAMEBUFFER = local_unnamed_addr constant i32 131082
@GLFW_HOVERED = local_unnamed_addr constant i32 131083
@GLFW_FOCUS_ON_SHOW = local_unnamed_addr constant i32 131084
@GLFW_RED_BITS = local_unnamed_addr constant i32 135169
@GLFW_GREEN_BITS = local_unnamed_addr constant i32 135170
@GLFW_BLUE_BITS = local_unnamed_addr constant i32 135171
@GLFW_ALPHA_BITS = local_unnamed_addr constant i32 135172
@GLFW_DEPTH_BITS = local_unnamed_addr constant i32 135173
@GLFW_STENCIL_BITS = local_unnamed_addr constant i32 135174
@GLFW_ACCUM_RED_BITS = local_unnamed_addr constant i32 135175
@GLFW_ACCUM_GREEN_BITS = local_unnamed_addr constant i32 135176
@GLFW_ACCUM_BLUE_BITS = local_unnamed_addr constant i32 135177
@GLFW_ACCUM_ALPHA_BITS = local_unnamed_addr constant i32 135178
@GLFW_AUX_BUFFERS = local_unnamed_addr constant i32 135179
@GLFW_STEREO = local_unnamed_addr constant i32 135180
@GLFW_SAMPLES = local_unnamed_addr constant i32 135181
@GLFW_SRGB_CAPABLE = local_unnamed_addr constant i32 135182
@GLFW_REFRESH_RATE = local_unnamed_addr constant i32 135183
@GLFW_DOUBLEBUFFER = local_unnamed_addr constant i32 135184
@GLFW_CLIENT_API = local_unnamed_addr constant i32 139265
@GLFW_CONTEXT_VERSION_MAJOR = local_unnamed_addr constant i32 139266
@GLFW_CONTEXT_VERSION_MINOR = local_unnamed_addr constant i32 139267
@GLFW_CONTEXT_REVISION = local_unnamed_addr constant i32 139268
@GLFW_CONTEXT_ROBUSTNESS = local_unnamed_addr constant i32 139269
@GLFW_OPENGL_FORWARD_COMPAT = local_unnamed_addr constant i32 139270
@GLFW_OPENGL_DEBUG_CONTEXT = local_unnamed_addr constant i32 139271
@GLFW_OPENGL_PROFILE = local_unnamed_addr constant i32 139272
@GLFW_CONTEXT_RELEASE_BEHAVIOR = local_unnamed_addr constant i32 139273
@GLFW_CONTEXT_NO_ERROR = local_unnamed_addr constant i32 139274
@GLFW_CONTEXT_CREATION_API = local_unnamed_addr constant i32 139275
@GLFW_SCALE_TO_MONITOR = local_unnamed_addr constant i32 139276
@GLFW_COCOA_RETINA_FRAMEBUFFER = local_unnamed_addr constant i32 143361
@GLFW_COCOA_FRAME_NAME = local_unnamed_addr constant i32 143362
@GLFW_COCOA_GRAPHICS_SWITCHING = local_unnamed_addr constant i32 143363
@GLFW_X11_CLASS_NAME = local_unnamed_addr constant i32 147457
@GLFW_X11_INSTANCE_NAME = local_unnamed_addr constant i32 147458
@GLFW_OPENGL_API = local_unnamed_addr constant i32 196609
@GLFW_OPENGL_ES_API = local_unnamed_addr constant i32 196610
@GLFW_NO_RESET_NOTIFICATION = local_unnamed_addr constant i32 200705
@GLFW_LOSE_CONTEXT_ON_RESET = local_unnamed_addr constant i32 200706
@GLFW_OPENGL_CORE_PROFILE = local_unnamed_addr constant i32 204801
@GLFW_OPENGL_COMPAT_PROFILE = local_unnamed_addr constant i32 204802
@GLFW_CURSOR = local_unnamed_addr constant i32 208897
@GLFW_STICKY_KEYS = local_unnamed_addr constant i32 208898
@GLFW_STICKY_MOUSE_BUTTONS = local_unnamed_addr constant i32 208899
@GLFW_LOCK_KEY_MODS = local_unnamed_addr constant i32 208900
@GLFW_RAW_MOUSE_MOTION = local_unnamed_addr constant i32 208901
@GLFW_CURSOR_NORMAL = local_unnamed_addr constant i32 212993
@GLFW_CURSOR_HIDDEN = local_unnamed_addr constant i32 212994
@GLFW_CURSOR_DISABLED = local_unnamed_addr constant i32 212995
@GLFW_RELEASE_BEHAVIOR_FLUSH = local_unnamed_addr constant i32 217089
@GLFW_RELEASE_BEHAVIOR_NONE = local_unnamed_addr constant i32 217090
@GLFW_NATIVE_CONTEXT_API = local_unnamed_addr constant i32 221185
@GLFW_EGL_CONTEXT_API = local_unnamed_addr constant i32 221186
@GLFW_OSMESA_CONTEXT_API = local_unnamed_addr constant i32 221187
@GLFW_ARROW_CURSOR = local_unnamed_addr constant i32 221185
@GLFW_IBEAM_CURSOR = local_unnamed_addr constant i32 221186
@GLFW_CROSSHAIR_CURSOR = local_unnamed_addr constant i32 221187
@GLFW_HAND_CURSOR = local_unnamed_addr constant i32 221188
@GLFW_HRESIZE_CURSOR = local_unnamed_addr constant i32 221189
@GLFW_VRESIZE_CURSOR = local_unnamed_addr constant i32 221190
@GLFW_CONNECTED = local_unnamed_addr constant i32 262145
@GLFW_DISCONNECTED = local_unnamed_addr constant i32 262146
@GLFW_JOYSTICK_HAT_BUTTONS = local_unnamed_addr constant i32 327681
@GLFW_COCOA_CHDIR_RESOURCES = local_unnamed_addr constant i32 331777
@GLFW_COCOA_MENUBAR = local_unnamed_addr constant i32 331778
@WINDOW_TITLE = local_unnamed_addr constant i8* getelementptr inbounds ([16 x i8], [16 x i8]* @4, i64 0, i64 0)
@4 = private unnamed_addr constant [16 x i8] c"Minecraft Clone\00", align 1
@DEFAULT_WINDOW_WIDTH = local_unnamed_addr constant i32 1280
@DEFAULT_WINDOW_HEIGHT = local_unnamed_addr constant i32 720
@SEEK_SET = local_unnamed_addr constant i32 0
@SEEK_CUR = local_unnamed_addr constant i32 1
@SEEK_END = local_unnamed_addr constant i32 2
@5 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@6 = private unnamed_addr constant [22 x i8] c"Failed to compile %s\0A\00", align 1
@7 = private unnamed_addr constant [27 x i8] c"Failed to initialize GLFW!\00", align 1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind
define noalias %Array* @qwr_array_create(i64) local_unnamed_addr #0 {
  %2 = tail call i8* @malloc(i64 24)
  %3 = bitcast i8* %2 to %Array*
  %4 = tail call i8* @malloc(i64 %0)
  %5 = bitcast i8* %2 to i8**
  store i8* %4, i8** %5, align 8
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i64*
  store i64 1, i64* %7, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to i64*
  store i64 0, i64* %9, align 8
  ret %Array* %3
}

; Function Attrs: norecurse nounwind readonly
define i8* @qwr_array_data(%Array* nocapture readonly) local_unnamed_addr #1 {
  %2 = bitcast %Array* %0 to i8**
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: norecurse nounwind readonly
define i64 @qwr_array_len(%Array* nocapture readonly) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %Array, %Array* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind
define void @qwr_array_init(%Array* nocapture, i64, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %Array, %Array* %0, i64 0, i32 2
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds %Array, %Array* %0, i64 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = bitcast %Array* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = mul i64 %2, %1
  %9 = tail call i8* @realloc(i8* %7, i64 %8)
  store i8* %9, i8** %6, align 8
  ret void
}

; Function Attrs: nounwind
define void @qwr_array_resize(%Array* nocapture, i64) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %Array, %Array* %0, i64 0, i32 2
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %Array, %Array* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp slt i64 %6, %4
  br i1 %7, label %16, label %8

; <label>:8:                                      ; preds = %2
  %9 = shl i64 %4, 1
  %10 = bitcast %Array* %0 to i8*
  %sunkaddr = getelementptr i8, i8* %10, i64 16
  %11 = bitcast i8* %sunkaddr to i64*
  store i64 %9, i64* %11, align 8
  %12 = bitcast %Array* %0 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = mul i64 %9, %1
  %15 = tail call i8* @realloc(i8* %13, i64 %14)
  store i8* %15, i8** %12, align 8
  br label %16

; <label>:16:                                     ; preds = %2, %8
  ret void
}

; Function Attrs: nounwind
define void @qwr_array_free(%Array* nocapture) local_unnamed_addr #0 {
  %2 = bitcast %Array* %0 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3)
  %4 = bitcast %Array* %0 to i8*
  tail call void @free(i8* %4)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #0

; Function Attrs: nounwind
define void @print_s64(i64) local_unnamed_addr #0 {
  %2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i64 0, i64 0), i64 %0)
  ret void
}

; Function Attrs: nounwind
define void @print_s(i8* nocapture readonly) local_unnamed_addr #0 {
  %puts = tail call i32 @puts(i8* %0)
  ret void
}

; Function Attrs: nounwind
define void @print_pu8(i8*) local_unnamed_addr #0 {
  %2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i64 0, i64 0), i8* %0)
  ret void
}

; Function Attrs: nounwind
define void @print_c(i8) local_unnamed_addr #0 {
  %2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i64 0, i64 0), i8 %0)
  ret void
}

; Function Attrs: nounwind
define void @print_f64(double) local_unnamed_addr #0 {
  %2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @3, i64 0, i64 0), double %0)
  ret void
}

declare void @exit(i32) local_unnamed_addr

declare void @glClear(i32) local_unnamed_addr

declare void @glViewport(i32, i32, i32, i32) local_unnamed_addr

declare void @glUseProgram(i32) local_unnamed_addr

declare i32 @glCreateProgram() local_unnamed_addr

declare void @glAttachShader(i32, i32) local_unnamed_addr

declare i32 @PFNGLCREATESHADERPROC(i32) local_unnamed_addr

declare void @glShaderSource(i32, i32, i8**, i32*) local_unnamed_addr

declare void @glCompileShader(i32) local_unnamed_addr

declare void @glGetShaderiv(i32, i32, i32*) local_unnamed_addr

declare void @glLinkProgram(i32) local_unnamed_addr

declare i32 @glewInit() local_unnamed_addr

declare i32 @glfwInit() local_unnamed_addr

declare i8* @glfwCreateWindow(i32, i32, i8*, i8*, i8*) local_unnamed_addr

declare i32 @glfwWindowShouldClose(i8*) local_unnamed_addr

declare void @glfwSwapBuffers(i8*) local_unnamed_addr

declare void @glfwMakeContextCurrent(i8*) local_unnamed_addr

declare void @glfwPollEvents() local_unnamed_addr

declare void @glfwShowWindow(i8*) local_unnamed_addr

declare void @glfwTerminate() local_unnamed_addr

define noalias %Window* @window_create() local_unnamed_addr {
  %1 = tail call i8* @malloc(i64 16)
  %2 = tail call i8* @glfwCreateWindow(i32 1280, i32 720, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @4, i64 0, i64 0), i8* null, i8* null)
  %3 = bitcast i8* %1 to i8**
  store i8* %2, i8** %3, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 8
  %5 = bitcast i8* %4 to i32*
  store i32 1280, i32* %5, align 4
  %6 = getelementptr inbounds i8, i8* %1, i64 12
  %7 = bitcast i8* %6 to i32*
  store i32 720, i32* %7, align 4
  %8 = icmp eq i8* %2, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %0
  tail call void @glfwTerminate()
  br label %10

; <label>:10:                                     ; preds = %9, %0
  %11 = bitcast i8* %1 to %Window*
  tail call void @glfwShowWindow(i8* %2)
  tail call void @glfwMakeContextCurrent(i8* %2)
  ret %Window* %11
}

define void @window_update_pWindow(%Window* nocapture readonly) local_unnamed_addr {
  %2 = bitcast %Window* %0 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @glfwSwapBuffers(i8* %3)
  tail call void @glfwPollEvents()
  ret void
}

define void @window_set_viewport_pWindow(%Window* nocapture readonly) local_unnamed_addr {
  %2 = getelementptr inbounds %Window, %Window* %0, i64 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %Window, %Window* %0, i64 0, i32 2
  %5 = load i32, i32* %4, align 4
  tail call void @glViewport(i32 0, i32 0, i32 %3, i32 %5)
  ret void
}

define i1 @window_should_close_pWindow(%Window* nocapture readonly) local_unnamed_addr {
  %2 = bitcast %Window* %0 to i8**
  %3 = load i8*, i8** %2, align 8
  %4 = tail call i32 @glfwWindowShouldClose(i8* %3)
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

define void @window_destroy() local_unnamed_addr {
  tail call void @glfwTerminate()
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @fseek(i8* nocapture, i64, i32) local_unnamed_addr #0

; Function Attrs: nounwind
declare i64 @ftell(i8* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, i8* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @fclose(i8* nocapture) local_unnamed_addr #0

; Function Attrs: nounwind
define i8* @read_entire_file_s(i8* nocapture readonly) local_unnamed_addr #0 {
  %2 = tail call i8* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @5, i64 0, i64 0))
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %5, %1
  ret i8* null

; <label>:5:                                      ; preds = %1
  tail call void @fseek(i8* nonnull %2, i64 0, i32 2)
  %6 = tail call i64 @ftell(i8* nonnull %2)
  tail call void @fseek(i8* nonnull %2, i64 0, i32 0)
  %7 = add i64 %6, 1
  %8 = tail call i8* @malloc(i64 %7)
  %9 = tail call i64 @fread(i8* %8, i64 1, i64 %6, i8* nonnull %2)
  %10 = icmp eq i64 %9, 0
  %11 = tail call i32 @fclose(i8* nonnull %2)
  br i1 %10, label %4, label %12

; <label>:12:                                     ; preds = %5
  %13 = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 0, i8* %13, align 1
  ret i8* %8
}

define i32 @shader_load_s_u32(i8*, i32) local_unnamed_addr {
  %3 = alloca i8*, align 8
  %4 = tail call i8* @read_entire_file_s(i8* %0)
  store i8* %4, i8** %3, align 8
  %5 = alloca i32, align 4
  %6 = tail call i32 @PFNGLCREATESHADERPROC(i32 %1)
  call void @glShaderSource(i32 %6, i32 1, i8** nonnull %3, i32* null)
  call void @glCompileShader(i32 %6)
  call void @glGetShaderiv(i32 %6, i32 35713, i32* nonnull %5)
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %2
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @6, i64 0, i64 0), i8* %0)
  call void @exit(i32 1)
  br label %11

; <label>:11:                                     ; preds = %2, %9
  ret i32 %6
}

define i32 @shader_create_s_s(i8*, i8*) local_unnamed_addr {
  %3 = tail call i32 @shader_load_s_u32(i8* %0, i32 35633)
  %4 = tail call i32 @shader_load_s_u32(i8* %1, i32 35632)
  %5 = tail call i32 @glCreateProgram()
  tail call void @glAttachShader(i32 %5, i32 %3)
  tail call void @glAttachShader(i32 %5, i32 %4)
  tail call void @glLinkProgram(i32 %5)
  ret i32 %5
}

define void @shader_use_u32(i32) local_unnamed_addr {
  tail call void @glUseProgram(i32 %0)
  ret void
}

define void @error_s(i8* nocapture readonly) local_unnamed_addr {
  %puts = tail call i32 @puts(i8* %0)
  tail call void @exit(i32 1)
  ret void
}

define i32 @main() local_unnamed_addr {
  %1 = tail call i32 @glfwInit()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @7, i64 0, i64 0))
  tail call void @exit(i32 1)
  br label %4

; <label>:4:                                      ; preds = %3, %0
  %5 = tail call i8* @glfwCreateWindow(i32 1280, i32 720, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @4, i64 0, i64 0), i8* null, i8* null)
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %window_create.exit

; <label>:7:                                      ; preds = %4
  tail call void @glfwTerminate()
  br label %window_create.exit

window_create.exit:                               ; preds = %4, %7
  tail call void @glfwShowWindow(i8* %5)
  tail call void @glfwMakeContextCurrent(i8* %5)
  %8 = tail call i32 @glewInit()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %window_create.exit
  tail call void @glfwTerminate()
  tail call void @exit(i32 1)
  br label %11

; <label>:11:                                     ; preds = %window_create.exit, %10
  tail call void @glViewport(i32 0, i32 0, i32 1280, i32 720)
  %12 = tail call i32 @glfwWindowShouldClose(i8* %5)
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %11
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  tail call void @glClear(i32 16384)
  tail call void @glfwSwapBuffers(i8* %5)
  tail call void @glfwPollEvents()
  %15 = tail call i32 @glfwWindowShouldClose(i8* %5)
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %11
  tail call void @glfwTerminate()
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.stackprotector(i8*, i8**) #0

attributes #0 = { nounwind }
attributes #1 = { norecurse nounwind readonly }
