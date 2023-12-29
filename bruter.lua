local luapiper = require("lib.luapiper")
local child = luapiper.PipeSession("pixilang", { "./src/entrypoint.pixi" })
local functions = {};
local constants = {};

-- CONSTANTS NOT READY AT ALL
-- Constants
-- Constants
-- Constants

-- Container types
constants.INT = INT;
constants.INT8 = INT8;
constants.INT16 = INT16;
constants.INT32 = INT32;
constants.INT64 = INT64;
constants.FLOAT = FLOAT;
constants.FLOAT32 = FLOAT32;
constants.FLOAT64 = FLOAT64;
constants.PIXEL = PIXEL;

-- Compression flags
constants.Z_NO_COMPRESSION = Z_NO_COMPRESSION;
constants.Z_BEST_SPEED = Z_BEST_SPEED;
constants.Z_BEST_COMPRESSION = Z_BEST_COMPRESSION;
constants.Z_DEFAULT_COMPRESSION = Z_DEFAULT_COMPRESSION;

-- Container flags
constants.CFLAG_INTERP = CFLAG_INTERP;
constants.GL_MIN_LINEAR = GL_MIN_LINEAR;
constants.GL_MAG_LINEAR = GL_MAG_LINEAR;
constants.GL_NICEST = GL_NICEST;
constants.GL_NO_XREPEAT = GL_NO_XREPEAT;
constants.GL_NO_YREPEAT = GL_NO_YREPEAT;
constants.GL_NO_ALPHA = GL_NO_ALPHA;
constants.GL_NPOT = GL_NPOT;

-- Container resizing flags
constants.RESIZE_INTERP1 = RESIZE_INTERP1;
constants.RESIZE_INTERP2 = RESIZE_INTERP2;
constants.RESIZE_UNSIGNED_INTERP2 = RESIZE_UNSIGNED_INTERP2;
constants.RESIZE_COLOR_INTERP1 = RESIZE_COLOR_INTERP1;
constants.RESIZE_COLOR_INTERP2 = RESIZE_COLOR_INTERP2;

-- Container copying flags
constants.COPY_NO_AUTOROTATE = COPY_NO_AUTOROTATE;
constants.COPY_CLIPPING = COPY_CLIPPING;

-- File formats
constants.FORMAT_RAW = FORMAT_RAW;
constants.FORMAT_WAVE = FORMAT_WAVE;
constants.FORMAT_AIFF = FORMAT_AIFF;
constants.FORMAT_OGG = FORMAT_OGG;
constants.FORMAT_MP3 = FORMAT_MP3;
constants.FORMAT_FLAC = FORMAT_FLAC;
constants.FORMAT_MIDI = FORMAT_MIDI;
constants.FORMAT_SUNVOX = FORMAT_SUNVOX;
constants.FORMAT_SUNVOXMODULE = FORMAT_SUNVOXMODULE;
constants.FORMAT_XM = FORMAT_XM;
constants.FORMAT_MOD = FORMAT_MOD;
constants.FORMAT_JPEG = FORMAT_JPEG;
constants.FORMAT_PNG = FORMAT_PNG;
constants.FORMAT_GIF = FORMAT_GIF;
constants.FORMAT_AVI = FORMAT_AVI;
constants.FORMAT_MP4 = FORMAT_MP4;
constants.FORMAT_ZIP = FORMAT_ZIP;
constants.FORMAT_PIXICONTAINER = FORMAT_PIXICONTAINER;

-- Load/Save options
constants.LOAD_FIRST_FRAME = LOAD_FIRST_FRAME;
constants.LOAD_AS_RAW = LOAD_AS_RAW;

-- GIF saving options
constants.GIF_GRAYSCALE = GIF_GRAYSCALE;
constants.GIF_DITHER = GIF_DITHER;

-- JPEG saving options
constants.JPEG_H1V1 = JPEG_H1V1;
constants.JPEG_H2V1 = JPEG_H2V1;
constants.JPEG_H2V2 = JPEG_H2V2;
constants.JPEG_TWOPASS = JPEG_TWOPASS;

-- Colors
constants.ORANGE = ORANGE;
constants.BLACK = BLACK;
constants.WHITE = WHITE;
constants.YELLOW = YELLOW;
constants.RED = RED;
constants.GREEN = GREEN;
constants.BLUE = BLUE;

-- Alignment
constants.TOP = TOP;
constants.BOTTOM = BOTTOM;
constants.LEFT = LEFT;
constants.RIGHT = RIGHT;

-- Effects
constants.EFF_NOISE = EFF_NOISE;
constants.EFF_SPREAD_LEFT = EFF_SPREAD_LEFT;
constants.EFF_SPREAD_RIGHT = EFF_SPREAD_RIGHT;
constants.EFF_SPREAD_UP = EFF_SPREAD_UP;
constants.EFF_SPREAD_DOWN = EFF_SPREAD_DOWN;
constants.EFF_HBLUR = EFF_HBLUR;
constants.EFF_VBLUR = EFF_VBLUR;
constants.EFF_COLOR = EFF_COLOR;

-- OpenGL constants
constants.GL_POINTS = GL_POINTS;
constants.GL_LINE_STRIP = GL_LINE_STRIP;
constants.GL_LINE_LOOP = GL_LINE_LOOP;
constants.GL_LINES = GL_LINES;
constants.GL_TRIANGLE_STRIP = GL_TRIANGLE_STRIP;
constants.GL_TRIANGLE_FAN = GL_TRIANGLE_FAN;
constants.GL_TRIANGLES = GL_TRIANGLES;

constants.GL_ZERO = GL_ZERO;
constants.GL_ONE = GL_ONE;
constants.GL_SRC_COLOR = GL_SRC_COLOR;
constants.GL_ONE_MINUS_SRC_COLOR = GL_ONE_MINUS_SRC_COLOR;
constants.GL_DST_COLOR = GL_DST_COLOR;
constants.GL_ONE_MINUS_DST_COLOR = GL_ONE_MINUS_DST_COLOR;
constants.GL_SRC_ALPHA = GL_SRC_ALPHA;
constants.GL_ONE_MINUS_SRC_ALPHA = GL_ONE_MINUS_SRC_ALPHA;
constants.GL_DST_ALPHA = GL_DST_ALPHA;
constants.GL_ONE_MINUS_DST_ALPHA = GL_ONE_MINUS_DST_ALPHA;
constants.GL_SRC_ALPHA_SATURATE = GL_SRC_ALPHA_SATURATE;

constants.GL_BFB_IDENTITY_MATRIX = GL_BFB_IDENTITY_MATRIX;

constants.GL_MAX_TEXTURE_SIZE = GL_MAX_TEXTURE_SIZE;
constants.GL_MAX_VERTEX_ATTRIBS = GL_MAX_VERTEX_ATTRIBS;
constants.GL_MAX_VERTEX_UNIFORM_VECTORS = GL_MAX_VERTEX_UNIFORM_VECTORS;
constants.GL_MAX_VARYING_VECTORS = GL_MAX_VARYING_VECTORS;
constants.GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
constants.GL_MAX_TEXTURE_IMAGE_UNITS = GL_MAX_TEXTURE_IMAGE_UNITS;
constants.GL_MAX_FRAGMENT_UNIFORM_VECTORS = GL_MAX_FRAGMENT_UNIFORM_VECTORS;

constants.GL_SHADER_SOLID = GL_SHADER_SOLID;
constants.GL_SHADER_GRAD = GL_SHADER_GRAD;
constants.GL_SHADER_TEX_ALPHA_SOLID = GL_SHADER_TEX_ALPHA_SOLID;
constants.GL_SHADER_TEX_ALPHA_GRAD = GL_SHADER_TEX_ALPHA_GRAD;
constants.GL_SHADER_TEX_RGB_SOLID = GL_SHADER_TEX_RGB_SOLID;
constants.GL_SHADER_TEX_RGB_GRAD = GL_SHADER_TEX_RGB_GRAD;

constants.GL_SCREEN = GL_SCREEN;
constants.GL_ZBUF = GL_ZBUF;

-- Audio constants
constants.AUDIO_FLAG_INTERP2 = AUDIO_FLAG_INTERP2;

-- MIDI constants
constants.MIDI_PORT_READ = MIDI_PORT_READ;
constants.MIDI_PORT_WRITE = MIDI_PORT_WRITE;

-- Events constants
constants.EVT = EVT;
constants.EVT_TYPE = EVT_TYPE;
constants.EVT_FLAGS = EVT_FLAGS;
constants.EVT_TIME = EVT_TIME;
constants.EVT_X = EVT_X;
constants.EVT_Y = EVT_Y;
constants.EVT_KEY = EVT_KEY;
constants.EVT_SCANCODE = EVT_SCANCODE;
constants.EVT_PRESSURE = EVT_PRESSURE;

constants.EVT_MOUSEBUTTONDOWN = EVT_MOUSEBUTTONDOWN;
constants.EVT_MOUSEBUTTONUP = EVT_MOUSEBUTTONUP;
constants.EVT_MOUSEMOVE = EVT_MOUSEMOVE;
constants.EVT_TOUCHBEGIN = EVT_TOUCHBEGIN;
constants.EVT_TOUCHEND = EVT_TOUCHEND;
constants.EVT_TOUCHMOVE = EVT_TOUCHMOVE;
constants.EVT_BUTTONDOWN = EVT_BUTTONDOWN;
constants.EVT_BUTTONUP = EVT_BUTTONUP;
constants.EVT_SCREENRESIZE = EVT_SCREENRESIZE;
constants.EVT_QUIT = EVT_QUIT;

constants.EVT_FLAG_SHIFT = EVT_FLAG_SHIFT;
constants.EVT_FLAG_CTRL = EVT_FLAG_CTRL;
constants.EVT_FLAG_ALT = EVT_FLAG_ALT;
constants.EVT_FLAG_MODE = EVT_FLAG_MODE;
constants.EVT_FLAG_MODS = EVT_FLAG_MODS;
constants.EVT_FLAG_DOUBLECLICK = EVT_FLAG_DOUBLECLICK;

constants.KEY_MOUSE_LEFT = KEY_MOUSE_LEFT;
constants.KEY_MOUSE_MIDDLE = KEY_MOUSE_MIDDLE;
constants.KEY_MOUSE_RIGHT = KEY_MOUSE_RIGHT;
constants.KEY_MOUSE_SCROLLUP = KEY_MOUSE_SCROLLUP;
constants.KEY_MOUSE_SCROLLDOWN = KEY_MOUSE_SCROLLDOWN;
constants.KEY_BACKSPACE = KEY_BACKSPACE;
constants.KEY_TAB = KEY_TAB;
constants.KEY_ENTER = KEY_ENTER;
constants.KEY_ESCAPE = KEY_ESCAPE;
constants.KEY_SPACE = KEY_SPACE;
constants.KEY_F1 = KEY_F1;
constants.KEY_F2 = KEY_F2;
constants.KEY_F3 = KEY_F3;
constants.KEY_F4 = KEY_F4;
constants.KEY_F5 = KEY_F5;
constants.KEY_F6 = KEY_F6;
constants.KEY_F7 = KEY_F7;
constants.KEY_F8 = KEY_F8;
constants.KEY_F9 = KEY_F9;
constants.KEY_F10 = KEY_F10;
constants.KEY_F11 = KEY_F11;
constants.KEY_F12 = KEY_F12;
constants.KEY_UP = KEY_UP;
constants.KEY_DOWN = KEY_DOWN;
constants.KEY_LEFT = KEY_LEFT;
constants.KEY_RIGHT = KEY_RIGHT;
constants.KEY_INSERT = KEY_INSERT;
constants.KEY_DELETE = KEY_DELETE;
constants.KEY_HOME = KEY_HOME;
constants.KEY_END = KEY_END;
constants.KEY_PAGEUP = KEY_PAGEUP;
constants.KEY_PAGEDOWN = KEY_PAGEDOWN;
constants.KEY_CAPS = KEY_CAPS;
constants.KEY_SHIFT = KEY_SHIFT;
constants.KEY_CTRL = KEY_CTRL;
constants.KEY_ALT = KEY_ALT;
constants.KEY_MENU = KEY_MENU;
constants.KEY_UNKNOWN = KEY_UNKNOWN;

constants.QA_NONE = QA_NONE;
constants.QA_CLOSE_VM = QA_CLOSE_VM;

-- Threads constants
constants.THREAD_FLAG_AUTO_DESTROY = THREAD_FLAG_AUTO_DESTROY;

-- Mathematical constants
constants.M_E = M_E;
constants.M_LOG2E = M_LOG2E;
constants.M_LOG10E = M_LOG10E;
constants.M_LN2 = M_LN2;
constants.M_LN10 = M_LN10;
constants.M_PI = M_PI;
constants.M_2_SQRTPI = M_2_SQRTPI;
constants.M_SQRT2 = M_SQRT2;
constants.M_SQRT1_2 = M_SQRT1_2;

-- Data processing operations for op_cn() function
constants.OP_MIN = OP_MIN;
constants.OP_MAX = OP_MAX;
constants.OP_MAXABS = OP_MAXABS;
constants.OP_SUM = OP_SUM;
constants.OP_LIMIT_TOP = OP_LIMIT_TOP;
constants.OP_LIMIT_BOTTOM = OP_LIMIT_BOTTOM;
constants.OP_ABS = OP_ABS;
constants.OP_SUB2 = OP_SUB2;
constants.OP_COLOR_SUB2 = OP_COLOR_SUB2;
constants.OP_DIV2 = OP_DIV2;
constants.OP_H_INTEGRAL = OP_H_INTEGRAL;
constants.OP_V_INTEGRAL = OP_V_INTEGRAL;
constants.OP_H_DERIVATIVE = OP_H_DERIVATIVE;
constants.OP_V_DERIVATIVE = OP_V_DERIVATIVE;
constants.OP_H_FLIP = OP_H_FLIP;
constants.OP_V_FLIP = OP_V_FLIP;

-- Data processing operations for op_cc() function
constants.OP_ADD = OP_ADD;
constants.OP_SADD = OP_SADD;
constants.OP_COLOR_ADD = OP_COLOR_ADD;
constants.OP_SUB = OP_SUB;
constants.OP_SSUB = OP_SSUB;
constants.OP_COLOR_SUB = OP_COLOR_SUB;
constants.OP_MUL = OP_MUL;
constants.OP_SMUL = OP_SMUL;
constants.OP_MUL_RSHIFT15 = OP_MUL_RSHIFT15;
constants.OP_COLOR_MUL = OP_COLOR_MUL;
constants.OP_DIV = OP_DIV;
constants.OP_COLOR_DIV = OP_COLOR_DIV;
constants.OP_AND = OP_AND;
constants.OP_OR = OP_OR;
constants.OP_XOR = OP_XOR;
constants.OP_LSHIFT = OP_LSHIFT;
constants.OP_RSHIFT = OP_RSHIFT;
constants.OP_EQUAL = OP_EQUAL;
constants.OP_LESS = OP_LESS;
constants.OP_GREATER = OP_GREATER;
constants.OP_COPY = OP_COPY;
constants.OP_COPY_LESS = OP_COPY_LESS;
constants.OP_COPY_GREATER = OP_COPY_GREATER;

-- Data processing operations for op_ccn() function
constants.OP_MUL_DIV = OP_MUL_DIV;
constants.OP_MUL_RSHIFT = OP_MUL_RSHIFT;

-- Data processing operations for generator() function
constants.OP_SIN = OP_SIN;
constants.OP_SIN8 = OP_SIN8;
constants.OP_RAND = OP_RAND;

-- Sampler constants
constants.SMP_INFO_SIZE = SMP_INFO_SIZE;

-- Sample info field numbers
constants.SMP_DEST = SMP_DEST;
constants.SMP_DEST_OFF = SMP_DEST_OFF;
constants.SMP_DEST_LEN = SMP_DEST_LEN;
constants.SMP_SRC = SMP_SRC;
constants.SMP_SRC_OFF_H = SMP_SRC_OFF_H;
constants.SMP_SRC_OFF_L = SMP_SRC_OFF_L;
constants.SMP_SRC_SIZE = SMP_SRC_SIZE;
constants.SMP_LOOP = SMP_LOOP;
constants.SMP_LOOP_LEN = SMP_LOOP_LEN;
constants.SMP_VOL1 = SMP_VOL1;
constants.SMP_VOL2 = SMP_VOL2;
constants.SMP_DELTA = SMP_DELTA;
constants.SMP_FLAGS = SMP_FLAGS;

-- Sample info flags
constants.SMP_FLAG_INTERP2 = SMP_FLAG_INTERP2;
constants.SMP_FLAG_INTERP4 = SMP_FLAG_INTERP4;
constants.SMP_FLAG_PINGPONG = SMP_FLAG_PINGPONG;
constants.SMP_FLAG_REVERSE = SMP_FLAG_REVERSE;

-- Convolution filter flags
constants.CONV_FILTER_COLOR = CONV_FILTER_COLOR;
constants.CONV_FILTER_BORDER_EXTEND = CONV_FILTER_BORDER_EXTEND;
constants.CONV_FILTER_BORDER_SKIP = CONV_FILTER_BORDER_SKIP;
constants.CONV_FILTER_UNSIGNED = CONV_FILTER_UNSIGNED;

-- File dialog options
constants.FDIALOG_FLAG_LOAD = FDIALOG_FLAG_LOAD;

-- Native code constants
constants.CCONV_DEFAULT = CCONV_DEFAULT;
constants.CCONV_CDECL = CCONV_CDECL;
constants.CCONV_STDCALL = CCONV_STDCALL;
constants.CCONV_UNIX_AMD64 = CCONV_UNIX_AMD64;
constants.CCONV_WIN64 = CCONV_WIN64;

-- POSIX constants
constants.FOPEN_MAX = FOPEN_MAX;
constants.SEEK_CUR = SEEK_CUR;
constants.SEEK_END = SEEK_END;
constants.SEEK_SET = SEEK_SET;
constants.EOF = EOF;
constants.STDIN = STDIN;
constants.STDOUT = STDOUT;
constants.STDERR = STDERR;

-- Pixilang info flags
constants.PIXINFO_MULTITOUCH = PIXINFO_MULTITOUCH;
constants.PIXINFO_TOUCHCONTROL = PIXINFO_TOUCHCONTROL;
constants.PIXINFO_NOWINDOW = PIXINFO_NOWINDOW;
constants.PIXINFO_MIDIIN = PIXINFO_MIDIIN;
constants.PIXINFO_MIDIOUT = PIXINFO_MIDIOUT;

-- Misc constants
constants.PIXILANG_VERSION = PIXILANG_VERSION;
constants.OS_NAME = OS_NAME;
constants.ARCH_NAME = ARCH_NAME;
constants.LANG_NAME = LANG_NAME;
constants.CURRENT_PATH = CURRENT_PATH;
constants.USER_PATH = USER_PATH;
constants.TEMP_PATH = TEMP_PATH;
constants.OPENGL = OPENGL;
constants.INT_SIZE = INT_SIZE;
constants.FLOAT_SIZE = FLOAT_SIZE;
constants.INT_MAX = INT_MAX;
constants.COLORBITS = COLORBITS;

-- Built-in global variables
constants.WINDOW_XSIZE = WINDOW_XSIZE;
constants.WINDOW_YSIZE = WINDOW_YSIZE;
constants.WINDOW_ZSIZE = WINDOW_ZSIZE;
constants.WINDOW_SAFE_AREA_X = WINDOW_SAFE_AREA_X;
constants.WINDOW_SAFE_AREA_Y = WINDOW_SAFE_AREA_Y;
constants.WINDOW_SAFE_AREA_W = WINDOW_SAFE_AREA_W;
constants.WINDOW_SAFE_AREA_H = WINDOW_SAFE_AREA_H;
constants.FPS = FPS;
constants.PPI = PPI;
constants.UI_SCALE = UI_SCALE;
constants.UI_FONT_SCALE = UI_FONT_SCALE;
constants.PIXILANG_INFO = PIXILANG_INFO;

-- Sunvox constants
    -- Note commands
    constants.NOTECMD_NOTE_OFF = NOTECMD_NOTE_OFF;
    constants.NOTECMD_ALL_NOTES_OFF = NOTECMD_ALL_NOTES_OFF;
    constants.NOTECMD_CLEAN_SYNTHS = NOTECMD_CLEAN_SYNTHS;
    constants.NOTECMD_STOP = NOTECMD_STOP;
    constants.NOTECMD_PLAY = NOTECMD_PLAY;
    constants.NOTECMD_SET_PITCH = NOTECMD_SET_PITCH;
    constants.NOTECMD_CLEAN_MODULE = NOTECMD_CLEAN_MODULE;

    -- Flags for sv_init()    constants.SV_INIT_FLAG_NO_DEBUG_OUTPUT = SV_INIT_FLAG_NO_DEBUG_OUTPUT;
    constants.SV_INIT_FLAG_USER_AUDIO_CALLBACK = SV_INIT_FLAG_USER_AUDIO_CALLBACK;
    constants.SV_INIT_FLAG_OFFLINE = SV_INIT_FLAG_OFFLINE;
    constants.SV_INIT_FLAG_AUDIO_INT16 = SV_INIT_FLAG_AUDIO_INT16;
    constants.SV_INIT_FLAG_AUDIO_FLOAT32 = SV_INIT_FLAG_AUDIO_FLOAT32;
    constants.SV_INIT_FLAG_ONE_THREAD = SV_INIT_FLAG_ONE_THREAD;

    -- Flags for sv_get_time_map()    constants.SV_TIME_MAP_SPEED = SV_TIME_MAP_SPEED;
    constants.SV_TIME_MAP_FRAMECNT = SV_TIME_MAP_FRAMECNT;

    -- Flags for sv_get_module_flags()    constants.SV_MODULE_FLAG_EXISTS = SV_MODULE_FLAG_EXISTS;
    constants.SV_MODULE_FLAG_GENERATOR = SV_MODULE_FLAG_GENERATOR;
    constants.SV_MODULE_FLAG_EFFECT = SV_MODULE_FLAG_EFFECT;
    constants.SV_MODULE_FLAG_MUTE = SV_MODULE_FLAG_MUTE;
    constants.SV_MODULE_FLAG_SOLO = SV_MODULE_FLAG_SOLO;
    constants.SV_MODULE_FLAG_BYPASS = SV_MODULE_FLAG_BYPASS;
    constants.SV_MODULE_INPUTS_OFF = SV_MODULE_INPUTS_OFF;
    constants.SV_MODULE_INPUTS_MASK = SV_MODULE_INPUTS_MASK;
    constants.SV_MODULE_OUTPUTS_OFF = SV_MODULE_OUTPUTS_OFF;
    constants.SV_MODULE_OUTPUTS_MASK = SV_MODULE_OUTPUTS_MASK;

    -- Other
    constants.NULL = -1;

-- Functions
-- Functions
-- Functions

-- Containers (memory management)
function __new(xsize, ysize, type)
    child:send("new" .. xsize .. " " .. ysize .. " " .. type);
end
functions.new = __new;

function __remove(pixi_container)
    child:send("remove" ..  pixi_container);
end
functions.remove = __remove;

function __remove_with_alpha(pixi_container)
    child:send("remove_with_alpha" ..  pixi_container);
end
functions.remove_with_alpha = __remove_with_alpha;

function __resize(pixi_container, xsize, ysize, type, flags )
    child:send("resize" .. pixi_container .. " " .. xsize .. " " .. ysize .. " " .. type .. " " .. flags );
end
functions.resize = __resize;

function __rotate(pixi_container, angle)
    child:send("rotate" .. pixi_container .. " " .. angle);
end
functions.rotate = __rotate;

function __convert_type(pixi_container, new_type)
    child:send("convert_type" .. pixi_container .. " " .. new_type);
end
functions.convert_type = __convert_type;

function __clean(pixi_container, v, offset, count)
    child:send("clean" .. pixi_container .. " " .. v .. " " .. offset .. " " .. count);
end
functions.clean = __clean;

function __clone(pixi_container)
    child:send("clone" ..  pixi_container);
end
functions.clone = __clone;

function __copy(dest, src, dest_offset, src_offset, count, dest_step, src_step, flags)
    child:send("copy" .. dest .. " " .. src .. " " .. dest_offset .. " " .. src_offset .. " " .. count .. " " .. dest_step .. " " .. src_step .. " " .. flags);
end
functions.copy = __copy;

function __get_size(pixi_container)
    child:send("get_size" ..  pixi_container);
end
functions.get_size = __get_size;

function __get_xsize(pixi_container)
    child:send("get_xsize" ..  pixi_container);
end
functions.get_xsize = __get_xsize;

function __get_ysize(pixi_container)
    child:send("get_ysize" ..  pixi_container);
end
functions.get_ysize = __get_ysize;

function __get_esize(pixi_container)
    child:send("get_esize" ..  pixi_container);
end
functions.get_esize = __get_esize;

function __get_type(pixi_container)
    child:send("get_type" ..  pixi_container);
end
functions.get_type = __get_type;

function __get_flags(pixi_container)
    child:send("get_flags" ..  pixi_container);
end
functions.get_flags = __get_flags;

function __set_flags(pixi_container, flags)
    child:send("set_flags" .. pixi_container .. " " .. flags);
end
functions.set_flags = __set_flags;

function __reset_flags(pixi_container, flags)
    child:send("reset_flags" .. pixi_container .. " " .. flags);
end
functions.reset_flags = __reset_flags;

function __get_prop(pixi_container, prop_name, default_value)
    child:send("get_prop" .. pixi_container .. " " .. prop_name .. " " .. default_value);
end
functions.get_prop = __get_prop;

function __set_prop(pixi_container, prop_name, value)
    child:send("set_prop" .. pixi_container .. " " .. prop_name .. " " .. value);
end
functions.set_prop = __set_prop;

function __remove_prop(pixi_container, prop_name)
    child:send("remove_prop" .. pixi_container .. " " .. prop_name);
end
functions.remove_prop = __remove_prop;

function __remove_props(pixi_container)
    child:send("remove_props" ..  pixi_container);
end
functions.remove_props = __remove_props;

function __get_proplist(pixi_container)
    child:send("get_proplist" ..  pixi_container);
end
functions.get_proplist = __get_proplist;

function __remove_proplist(list)
    child:send("remove_proplist" ..  list);
end
functions.remove_proplist = __remove_proplist;

function __show_memory_debug_messages(enable)
    child:send("show_memory_debug_messages" ..  enable);
end
functions.show_memory_debug_messages = __show_memory_debug_messages;

function __zlib_pack(source, level)
    child:send("zlib_pack" .. source .. " " .. level);
end
functions.zlib_pack = __zlib_pack;

function __zlib_unpack(source)
    child:send("zlib_unpack" ..  source);
end
functions.zlib_unpack = __zlib_unpack;

-- Strings
function __num_to_str(num, radix, str_offset, no_null_term)
    child:send("num_to_str" .. num .. " " .. radix .. " " .. str_offset .. " " .. no_null_term);
end
functions.num_to_str = __num_to_str;

function __str_to_num(str, str_offset, len)
    child:send("str_to_num" .. str .. " " .. str_offset .. " " .. len);
end
functions.str_to_num = __str_to_num;

function __strcat(dest, src)
    child:send("strcat" .. dest .. " " .. src);
end
functions.strcat = __strcat;

function __strcat1(dest, dest_offset, src, src_offset)
    child:send("strcat" .. dest .. " " .. dest_offset .. " " .. src .. " " .. src_offset);
end
functions.strcat1 = __strcat1;

function __strcmp(str1, str2)
    child:send("strcmp" .. str1 .. " " .. str2);
end
functions.strcmp = __strcmp;

function __strcmp1(str1, str1_offset, str2, str2_offset)
    child:send("strcmp" .. str1 .. " " .. str1_offset .. " " .. str2 .. " " .. str2_offset);
end
functions.strcmp1 = __strcmp1;

function __strlen(str)
    child:send("strlen" ..  str);
end
functions.strlen = __strlen;

function __strlen1(str, str_offset)
    child:send("strlen" .. str .. " " .. str_offset);
end
functions.strlen1 = __strlen1;

function __strstr(str1,str2)
    child:send("strstr" .. str1 .. " " ..str2);
end
functions.strstr = __strstr;

function __strstr1(str1,str1_offset,str2,str2_offset)
    child:send("strstr" .. str1 .. " " ..str1_offset,str2,str2_offset);
end
functions.strstr = __strstr1;

--not ready for use
function __sprintf(str, format, entry1, entry2, entry3, entry4, entry5, entry6, entry7, entry8)
    child:send("sprintf" .. str .. " " .. format .. " " .. entry1 .. " " .. entry2 .. " " .. entry3 .. " " .. entry4 .. " " .. entry5 .. " " .. entry6 .. " " .. entry7 .. " " .. entry8);
end
functions.sprintf = __sprintf;

--not ready for use
function __sprintf2(str, str_offset, no_null_term, format, entry1, entry2, entry3, entry4, entry5, entry6, entry7, entry8)
    child:send("sprintf2" .. str .. " " .. str_offset .. " " .. no_null_term .. " " .. format .. " " .. entry1 .. " " .. entry2 .. " " .. entry3 .. " " .. entry4 .. " " .. entry5 .. " " .. entry6 .. " " .. entry7 .. " " .. entry8);
end
functions.sprintf2 = __sprintf2;

--not ready for use
function __printf(msg, entry1, entry2, entry3, entry4, entry5, entry6, entry7, entry8)
    child:send("printf" .. msg .. " " .. entry1 .. " " .. entry2 .. " " .. entry3 .. " " .. entry4 .. " " .. entry5 .. " " .. entry6 .. " " .. entry7 .. " " .. entry8);
end
functions.printf = __printf;

--use this instead
function __printf1(msg)
    child:send("printf" ..  msg);
end
functions.printf1 = __printf1;

--not ready for use
function __fprintf(stream, format, entry1, entry2, entry3, entry4, entry5, entry6, entry7, entry8)
    child:send("fprintf" .. stream .. " " .. format .. " " .. entry1 .. " " .. entry2 .. " " .. entry3 .. " " .. entry4 .. " " .. entry5 .. " " .. entry6 .. " " .. entry7 .. " " .. entry8);
end
functions.fprintf = __fprintf;

-- Log management

--not ready for use
function __logf(format, entry1, entry2, entry3, entry4, entry5, entry6, entry7, entry8)
    child:send("logf" .. format .. " " .. entry1 .. " " .. entry2 .. " " .. entry3 .. " " .. entry4 .. " " .. entry5 .. " " .. entry6 .. " " .. entry7 .. " " .. entry8);
end
functions.logf = __logf;

function __get_log()
    child:send("get_log 0");
end
functions.get_log = __get_log;

function __get_system_log()
    child:send("get_system_log 0");
end
functions.get_system_log = __get_system_log;

-- Working with files
function __load(name, filename, options)
    child:send("load" .. name .. " " .. filename .. " " .. options);
end
functions.load = __load;

function __load0(name, filename)    child:send("load0" .. name .. " " .. filename);
end
functions.load0 = __load0;

function __fload(stream, options)
    child:send("fload" .. stream .. " " .. options);
end
functions.fload = __fload;

function __save(pixi_container, filename, format, options)
    child:send("save" .. pixi_container .. " " .. filename .. " " .. format .. " " .. options);
end
functions.save = __save;

function __fsave(pixi_container, stream, format, options)
    child:send("fsave" .. pixi_container .. " " .. stream .. " " .. format .. " " .. options);
end
functions.fsave = __fsave;

function __get_real_path(path)
    child:send("get_real_path" ..  path);
end
functions.get_real_path = __get_real_path;

function __new_flist(path)
    child:send("new_flist" ..  path);
end
functions.new_flist = __new_flist;

function __remove_flist(flist)
    child:send("remove_flist" ..  flist);
end
functions.remove_flist = __remove_flist;

function __get_flist_name(flist)
    child:send("get_flist_name" ..  flist);
end
functions.get_flist_name = __get_flist_name;

function __get_flist_type(flist)
    child:send("get_flist_type" ..  flist);
end
functions.get_flist_type = __get_flist_type;

function __flist_next(flist)
    child:send("flist_next" ..  flist);
end
functions.flist_next = __flist_next;

function __get_file_size(filename)
    child:send("get_file_size" ..  filename);
end
functions.get_file_size = __get_file_size;

function __get_file_format(filename,stream)
    child:send("get_file_format" .. filename .. " " ..stream);
end
functions.get_file_format = __get_file_format;

function __get_fformat_mime(fileformat)
    child:send("get_fformat_mime" ..  fileformat);
end
functions.get_fformat_mime = __get_fformat_mime;

function __get_fformat_ext(fileformat)
    child:send("get_fformat_ext" ..  fileformat);
end
functions.get_fformat_ext = __get_fformat_ext;

function __remove_file(filename)
    child:send("remove_file" ..  filename);
end
functions.remove_file = __remove_file;

function __rename_file(old_name, new_name)
    child:send("rename_file" .. old_name .. " " .. new_name);
end
functions.rename_file = __rename_file;

function __copy_file(old_name, new_name)
    child:send("copy_file" .. old_name .. " " .. new_name);
end
functions.copy_file = __copy_file;

function __create_directory(path, mode)
    child:send("create_directory" .. path .. " " .. mode);
end
functions.create_directory = __create_directory;

function __set_disk0(stream)
    child:send("set_disk0" ..  stream);
end
functions.set_disk0 = __set_disk0;

function __get_disk0()
    child:send("get_disk0 0");
end
functions.get_disk0 = __get_disk0;

function __fopen(filename, mode)
    child:send("fopen" .. filename .. " " .. mode);
end
functions.fopen = __fopen;

function __fopen_mem(data)
    child:send("fopen_mem" ..  data);
end
functions.fopen_mem = __fopen_mem;

function __fclose(stream)
    child:send("fclose" ..  stream);
end
functions.fclose = __fclose;

function __fputc(char, stream)
    child:send("fputc" .. char .. " " .. stream);
end
functions.fputc = __fputc;

function __fputs(str, stream)
    child:send("fputs" .. str .. " " .. stream);
end
functions.fputs = __fputs;

function __fwrite(data, size, stream, data_offset_optional)
    child:send("fwrite" .. data .. " " .. size .. " " .. stream .. " " .. data_offset_optional);
end
functions.fwrite = __fwrite;

function __fgetc(stream)
    child:send("fgetc" ..  stream);
end
functions.fgetc = __fgetc;

function __fgets(s, n, stream, offset)
    child:send("fgets" .. s .. " " .. n .. " " .. stream .. " " .. offset);
end
functions.fgets = __fgets;

function __fread(data, size, stream, data_offset_optional)
    child:send("fread" .. data .. " " .. size .. " " .. stream .. " " .. data_offset_optional);
end
functions.fread = __fread;

function __feof(stream)
    child:send("feof" ..  stream);
end
functions.feof = __feof;

function __fflush(stream)
    child:send("fflush" ..  stream);
end
functions.fflush = __fflush;

function __fseek(stream, offset, origin)
    child:send("fseek" .. stream .. " " .. offset .. " " .. origin);
end
functions.fseek = __fseek;

function __ftell(stream)
    child:send("ftell" ..  stream);
end
functions.ftell = __ftell;

function __setxattr(path, attr_name, data, data_size_in_bytes, flags)
    child:send("setxattr" .. path .. " " .. attr_name .. " " .. data .. " " .. data_size_in_bytes .. " " .. flags);
end
functions.setxattr = __setxattr;
-- Graphics
function __frame(delay, x, y, sizex, sizey)
    child:send("frame" .. delay .. " " .. x .. " " .. y .. " " .. sizex .. " " .. sizey);
end
functions.frame = __frame;

function __vsync(enable)
    child:send("vsync" ..  enable);
end
functions.vsync = __vsync;

function __set_pixel_size(size)
    child:send("set_pixel_size" ..  size);
end
functions.set_pixel_size = __set_pixel_size;

function __get_pixel_size()
    child:send("get_pixel_size 0");
end
functions.get_pixel_size = __get_pixel_size;

function __set_screen(pixi_container)
    child:send("set_screen" ..  pixi_container);
end
functions.set_screen = __set_screen;

function __get_screen()
    child:send("get_screen 0");
end
functions.get_screen = __get_screen;

function __set_zbuf(pixi_container)
    child:send("set_zbuf" ..  pixi_container);
end
functions.set_zbuf = __set_zbuf;

function __get_zbuf()
    child:send("get_zbuf 0");
end
functions.get_zbuf = __get_zbuf;

function __clear_zbuf()
    child:send("clear_zbuf 0");
end
functions.clear_zbuf = __clear_zbuf;

function __get_color(r,g,b)
    child:send("get_color" .. r .. " " ..g,b);
end
functions.get_color = __get_color;

function __get_red(color)
    child:send("get_red" ..  color);
end
functions.get_red = __get_red;

function __get_green(color)
    child:send("get_green" ..  color);
end
functions.get_green = __get_green;

function __get_blue(color)
    child:send("get_blue" ..  color);
end
functions.get_blue = __get_blue;

function __get_blend(color1, color2, v)
    child:send("get_blend" .. color1 .. " " .. color2 .. " " .. v);
end
functions.get_blend = __get_blend;

function __transp(transparency)
    child:send("transp" ..  transparency);
end
functions.transp = __transp;

function __get_transp()
    child:send("get_transp 0");
end
functions.get_transp = __get_transp;

function __clear(color)
    child:send("clear" ..  color);
end
functions.clear = __clear;

function __dot(x, y, color)
    child:send("dot" .. x .. " " .. y .. " " .. color);
end
functions.dot = __dot;

function __dot3d(x, y, z, color)
    child:send("dot3d" .. x .. " " .. y .. " " .. z .. " " .. color);
end
functions.dot3d = __dot3d;

function __get_dot(x, y)
    child:send("get_dot" .. x .. " " .. y);
end
functions.get_dot = __get_dot;

function __get_dot3d(x, y, z)
    child:send("get_dot3d" .. x .. " " .. y .. " " .. z);
end
functions.get_dot3d = __get_dot3d;

function __line(x1, y1, x2, y2, color)
    child:send("line" .. x1 .. " " .. y1 .. " " .. x2 .. " " .. y2 .. " " .. color);
end
functions.line = __line;

function __line3d(x1, y1, z1, x2, y2, z2, color)
    child:send("line3d" .. x1 .. " " .. y1 .. " " .. z1 .. " " .. x2 .. " " .. y2 .. " " .. z2 .. " " .. color);
end
functions.line3d = __line3d;

function __box(x1, y1, xsize, ysize, color)
    child:send("box" .. x1 .. " " .. y1 .. " " .. xsize .. " " .. ysize .. " " .. color);
end
functions.box = __box;

function __fbox(x, y, xsize, ysize, color)
    child:send("fbox" .. x .. " " .. y .. " " .. xsize .. " " .. ysize .. " " .. color);
end
functions.fbox = __fbox;

--pixi_cont, x, y, color, xscale, yscale, src_x, src_y, src_xsize, src_ysize
function __pixi(pixi_container, x, y, color, xscale, yscale, src_x, src_y, src_xsize, src_ysize)
    child:send("pixi" .. pixi_container .. " " .. x .. " " .. y .. " " .. color .. " " .. xscale .. " " .. yscale .. " " .. src_x .. " " .. src_y .. " " .. src_xsize .. " " .. src_ysize);
end
functions.pixi = __pixi;

function __triangles3d(vertices, triangles, tnum)
    child:send("triangles3d" .. vertices .. " " .. triangles .. " " .. tnum);
end
functions.triangles3d = __triangles3d;

function __sort_triangles3d(vertices, triangles, tnum)
    child:send("sort_triangles3d" .. vertices .. " " .. triangles .. " " .. tnum);
end
functions.sort_triangles3d = __sort_triangles3d;

function __set_key_color(pixi_container, color)
    child:send("set_key_color" .. pixi_container .. " " .. color);
end
functions.set_key_color = __set_key_color;

function __get_key_color()
    child:send("get_key_color 0");
end
functions.get_key_color = __get_key_color;

function __set_alpha(pixi_container, alpha)
    child:send("set_alpha" .. pixi_container .. " " .. alpha);
end
functions.set_alpha = __set_alpha;

function __get_alpha(pixi_container)
    child:send("get_alpha" ..  pixi_container);
end
functions.get_alpha = __get_alpha;

function __print(text, x, y, color, align, max_xsize, str_offset, str_size)
    child:send("print" .. text .. " " .. x .. " " .. y .. " " .. color .. " " .. align .. " " .. max_xsize .. " " .. str_offset .. " " .. str_size);
end
functions.print = __print;

function __get_text_xsize(text, align, max_xsize, str_offset, str_size)
    child:send("get_text_xsize" .. text .. " " .. align .. " " .. max_xsize .. " " .. str_offset .. " " .. str_size);
end
functions.get_text_xsize = __get_text_xsize;

function __get_text_ysize(text, align, max_xsize, str_offset, str_size)
    child:send("get_text_ysize" .. text .. " " .. align .. " " .. max_xsize .. " " .. str_offset .. " " .. str_size);
end
functions.get_text_ysize = __get_text_ysize;

function __get_text_xysize(text, align, max_xsize, str_offset, str_size)
    child:send("get_text_xysize" .. text .. " " .. align .. " " .. max_xsize .. " " .. str_offset .. " " .. str_size);
end
functions.get_text_xysize = __get_text_xysize;

function __set_font(first_char_utf32, font_image, xchars, ychars, last_char, char_xsize, char_ysize, char_xsize2, char_ysize2, grid_xoffset, grid_yoffset, grid_cell_xsize, grid_cell_ysize)
    child:send("set_font" .. first_char_utf32 .. " " .. font_image .. " " .. xchars .. " " .. ychars .. " " .. last_char .. " " .. char_xsize .. " " .. char_ysize .. " " .. char_xsize2 .. " " .. char_ysize2 .. " " .. grid_xoffset .. " " .. grid_yoffset .. " " .. grid_cell_xsize .. " " .. grid_cell_ysize);
end
functions.set_font = __set_font;

function __get_font(char_utf32)
    child:send("get_font" ..  char_utf32);
end
functions.get_font = __get_font;

function __effector(type, power, color, x, y, xsize, ysize, x_step, y_step)
    child:send("effector" .. type .. " " .. power .. " " .. color .. " " .. x .. " " .. y .. " " .. xsize .. " " .. ysize .. " " .. x_step .. " " .. y_step);
end
functions.effector = __effector;

function __color_gradient(color1, opacity1, color2, opacity2, color3, opacity3, color4, opacity4, x, y, xsize, ysize, x_step, y_step)
    child:send("color_gradient" .. color1 .. " " .. opacity1 .. " " .. color2 .. " " .. opacity2 .. " " .. color3 .. " " .. opacity3 .. " " .. color4 .. " " .. opacity4 .. " " .. x .. " " .. y .. " " .. xsize .. " " .. ysize .. " " .. x_step .. " " .. y_step);
end
functions.color_gradient = __color_gradient;

function __split_rgb(direction, image, red_channel, green_channel, blue_channel, image_offset, channel_offset, size)
    child:send("split_rgb" .. direction .. " " .. image .. " " .. red_channel .. " " .. green_channel .. " " .. blue_channel .. " " .. image_offset .. " " .. channel_offset .. " " .. size);
end
functions.split_rgb = __split_rgb;

function __split_ycbcr(direction, image, y_channel, cb_channel, cr_channel, image_offset, channel_offset, size)
    child:send("split_ycbcr" .. direction .. " " .. image .. " " .. y_channel .. " " .. cb_channel .. " " .. cr_channel .. " " .. image_offset .. " " .. channel_offset .. " " .. size);
end
functions.split_ycbcr = __split_ycbcr;

-- OpenGL base
function __set_gl_callback(gl_callback, user_data)
    child:send("set_gl_callback" .. gl_callback .. " " .. user_data);
end
functions.set_gl_callback = __set_gl_callback;

function __remove_gl_data(pixi_container)
    child:send("remove_gl_data" ..  pixi_container);
end
functions.remove_gl_data = __remove_gl_data;

function __update_gl_data(pixi_container)
    child:send("update_gl_data" ..  pixi_container);
end
functions.update_gl_data = __update_gl_data;

function __gl_draw_arrays(mode, first, count, color_r, color_g, color_b, color_a, texture, vertex_array, color_array, texcoord_array)
    child:send("gl_draw_arrays" .. mode .. " " .. first .. " " .. count .. " " .. color_r .. " " .. color_g .. " " .. color_b .. " " .. color_a .. " " .. texture .. " " .. vertex_array .. " " .. color_array .. " " .. texcoord_array);
end
functions.gl_draw_arrays = __gl_draw_arrays;

function __gl_blend_func(sfactor, dfactor, sfactor_alpha, dfactor_alpha)
    child:send("gl_blend_func" .. sfactor .. " " .. dfactor .. " " .. sfactor_alpha .. " " .. dfactor_alpha);
end
functions.gl_blend_func = __gl_blend_func;

function __gl_bind_framebuffer(cnum, flags, x, y, width, height)
    child:send("gl_bind_framebuffer" .. cnum .. " " .. flags .. " " .. x .. " " .. y .. " " .. width .. " " .. height);
end
functions.gl_bind_framebuffer = __gl_bind_framebuffer;

function __gl_bind_texture(cnum, texture_unit)
    child:send("gl_bind_texture" .. cnum .. " " .. texture_unit);
end
functions.gl_bind_texture = __gl_bind_texture;

function __gl_get_int(pname)
    child:send("gl_get_int" ..  pname);
end
functions.gl_get_int = __gl_get_int;

function __gl_get_float(pname)
    child:send("gl_get_float" ..  pname);
end
functions.gl_get_float = __gl_get_float;

-- OpenGL shaders
function __gl_new_prog(vertex_shader, fragment_shader)
    child:send("gl_new_prog" .. vertex_shader .. " " .. fragment_shader);
end
functions.gl_new_prog = __gl_new_prog;

function __gl_use_prog(prog)
    child:send("gl_use_prog" ..  prog);
end
functions.gl_use_prog = __gl_use_prog;

function __gl_uniform(var_location, v0, v1, v2, v3)
    child:send("gl_uniform" .. var_location .. " " .. v0 .. " " .. v1 .. " " .. v2 .. " " .. v3);
end
functions.gl_uniform = __gl_uniform;

function __gl_uniform_matrix(size, matrix_location, transpose, matrix)
    child:send("gl_uniform_matrix 0");
end
functions.gl_uniform_matrix = __gl_uniform_matrix;

-- Animation
function __pack_frame(pixi_container)
    child:send("pack_frame" ..  pixi_container);
end
functions.pack_frame = __pack_frame;

function __unpack_frame(pixi_container)
    child:send("unpack_frame" ..  pixi_container);
end
functions.unpack_frame = __unpack_frame;

function __create_anim(pixi_container)
    child:send("create_anim" ..  pixi_container);
end
functions.create_anim = __create_anim;

function __remove_anim(pixi_container)
    child:send("remove_anim" ..  pixi_container);
end
functions.remove_anim = __remove_anim;

function __clone_frame(pixi_container)
    child:send("clone_frame" ..  pixi_container);
end
functions.clone_frame = __clone_frame;

function __remove_frame(pixi_container)
    child:send("remove_frame" ..  pixi_container);
end
functions.remove_frame = __remove_frame;

function __play(pixi_container)
    child:send("play" ..  pixi_container);
end
functions.play = __play;

function __stop(pixi_container)
    child:send("stop" ..  pixi_container);
end
functions.stop = __stop;

-- Transformation
function __t_reset()
    child:send("t_reset 0");
end
functions.t_reset = __t_reset;

function __t_rotate(angle, axis_x, axis_y, axis_z)
    child:send("t_rotate" .. angle .. " " .. axis_x .. " " .. axis_y .. " " .. axis_z);
end
functions.t_rotate = __t_rotate;

function __t_translate(x, y, z)
    child:send("t_translate" .. x .. " " .. y .. " " .. z);
end
functions.t_translate = __t_translate;

function __t_scale(x, y, z)
    child:send("t_scale" .. x .. " " .. y .. " " .. z);
end
functions.t_scale = __t_scale;

function __t_push_matrix()
    child:send("t_push_matrix 0");
end
functions.t_push_matrix = __t_push_matrix;

function __t_pop_matrix()
    child:send("t_pop_matrix 0");
end
functions.t_pop_matrix = __t_pop_matrix;

function __t_get_matrix(matrix)
    child:send("t_get_matrix" ..  matrix);
end
functions.t_get_matrix = __t_get_matrix;

function __t_set_matrix(matrix)
    child:send("t_set_matrix" ..  matrix);
end
functions.t_set_matrix = __t_set_matrix;

function __t_mul_matrix(matrix)
    child:send("t_mul_matrix 0");
end
functions.t_mul_matrix = __t_mul_matrix;

function __t_point(float_array_vec3)
    child:send("t_point" ..  float_array_vec3);
end
functions.t_point = __t_point;

-- Audio
function __set_audio_callback(callback, userdata, sample_rate, format, channels, flags)
    child:send("set_audio_callback" .. callback .. " " .. userdata .. " " .. sample_rate .. " " .. format .. " " .. channels .. " " .. flags);
end
functions.set_audio_callback = __set_audio_callback;

function __get_audio_sample_rate(source)
    child:send("get_audio_sample_rate" ..  source);
end
functions.get_audio_sample_rate = __get_audio_sample_rate;

function __enable_audio_input(disable_enable)
    child:send("enable_audio_input" ..  disable_enable);
end
functions.enable_audio_input = __enable_audio_input;

function __get_note_freq(note, finetune)
    child:send("get_note_freq" .. note .. " " .. finetune);
end
functions.get_note_freq = __get_note_freq;

-- MIDI
function __midi_open_client(client_name)
    child:send("midi_open_client" ..  client_name);
end
functions.midi_open_client = __midi_open_client;

function __midi_close_client(client_id)
    child:send("midi_close_client" ..  client_id);
end
functions.midi_close_client = __midi_close_client;

function __midi_get_device(client_id, device_num, flags)
    child:send("midi_get_device" .. client_id .. " " .. device_num .. " " .. flags);
end
functions.midi_get_device = __midi_get_device;

function __midi_open_port(client_id, port_name, device_name, flags)
    child:send("midi_open_port" .. client_id .. " " .. port_name .. " " .. device_name .. " " .. flags);
end
functions.midi_open_port = __midi_open_port;

function __midi_reopen_port(client_id, port_id)
    child:send("midi_reopen_port" .. client_id .. " " .. port_id);
end
functions.midi_reopen_port = __midi_reopen_port;

function __midi_close_port(client_id, port_id)
    child:send("midi_close_port" .. client_id .. " " .. port_id);
end
functions.midi_close_port = __midi_close_port;

function __midi_get_event(client_id, port_id, cont)
    child:send("midi_get_event" .. client_id .. " " .. port_id .. " " .. cont);
end
functions.midi_get_event = __midi_get_event;

function __midi_get_event_time(client_id, port_id)
    child:send("midi_get_event_time" .. client_id .. " " .. port_id);
end
functions.midi_get_event_time = __midi_get_event_time;

function __midi_next_event(client_id, port_id)
    child:send("midi_next_event" .. client_id .. " " .. port_id);
end
functions.midi_next_event = __midi_next_event;

function __midi_send_event(client_id, port_id, data_cont, data_size, t )
    child:send("midi_send_event" .. client_id .. " " .. port_id .. " " .. data_cont .. " " .. data_size .. " " .. t);
end
functions.midi_send_event = __midi_send_event;

-- SunVox
-- Main

--NOT FOR PIXILANG
--[[function __sv_load_dll()
    child:send("sv_load_dll 0");
end
functions.sv_load_dll = __sv_load_dll;

function __sv_unload_dll()
    child:send("sv_unload_dll 0");
end
functions.sv_unload_dll = __sv_unload_dll;

function __sv_init()
    child:send("sv_init 0");
end
functions.sv_init = __sv_init;

function __sv_deinit()
    child:send("sv_deinit 0");
end
functions.sv_deinit = __sv_deinit;
]]

function __sv_new(sample_rate, flags)
    child:send("sv_new" .. sample_rate .. " " .. flags);
end
functions.sv_new = __sv_new;

function __sv_remove(sv)
    child:send("sv_remove" ..  sv);
end
functions.sv_remove = __sv_remove;

function __sv_get_sample_rate(sv)
    child:send("sv_get_sample_rate" ..  sv);
end
functions.sv_get_sample_rate = __sv_get_sample_rate;

-- NOT FOR PIXILANG
--[[
function __sv_update_input()
    child:send("sv_update_input 0");
end
functions.sv_update_input = __sv_update_input;

function __sv_audio_callback()
    child:send("sv_audio_callback 0");
end
functions.sv_audio_callback = __sv_audio_callback;

function __sv_audio_callback2()
    child:send("sv_audio_callback2 0");
end
functions.sv_audio_callback2 = __sv_audio_callback2;
]]

function __sv_render(sv, buf, frames, latency, out_time, in_buf, in_channels)
    child:send("sv_render" .. sv .. " " .. buf .. " " .. frames .. " " .. latency .. " " .. out_time .. " " .. in_buf .. " " .. in_channels);
end
functions.sv_render = __sv_render;

-- NOT FOR PIXILANG
--[[
function __sv_open_slot()
    child:send("sv_open_slot 0");
end
functions.sv_open_slot = __sv_open_slot;

function __sv_close_slot()
    child:send("sv_close_slot 0");
end
functions.sv_close_slot = __sv_close_slot;

function __sv_lock_slot()
    child:send("sv_lock_slot 0");
end
functions.sv_lock_slot = __sv_lock_slot;

function __sv_unlock_slot()
    child:send("sv_unlock_slot 0");
end
functions.sv_unlock_slot = __sv_unlock_slot;
]]

function __sv_lock(sv)
    child:send("sv_lock" ..  sv);
end
functions.sv_lock = __sv_lock;

function __sv_unlock(sv)
    child:send("sv_unlock" ..  sv);
end
functions.sv_unlock = __sv_unlock;

-- Project file
function __sv_load(sv, filename)
    child:send("sv_load" .. sv .. " " .. filename);
end
functions.sv_load = __sv_load;

-- NOT FOR PIXILANG
--[[
function __sv_load_from_memory()
    child:send("sv_load_from_memory 0");
end
functions.sv_load_from_memory = __sv_load_from_memory;
]]

function __sv_fload(sv, f)
    child:send("sv_fload" .. sv .. " " .. f);
end
functions.sv_fload = __sv_fload;

function __sv_save(sv, filename)
    child:send("sv_save" .. sv .. " " .. filename);
end
functions.sv_save = __sv_save;

function __sv_fsave(sv, f)
    child:send("sv_fsave" .. sv .. " " .. f);
end
functions.sv_fsave = __sv_fsave;

-- Project playback
function __sv_play(sv, line_num)
    child:send("sv_play" .. sv .. " " .. line_num);
end
functions.sv_play = __sv_play;

-- NOT FOR PIXILANG
--[[
function __sv_play_from_beginning()
    child:send("sv_play_from_beginning 0");
end
functions.sv_play_from_beginning = __sv_play_from_beginning;
]]

function __sv_stop(sv)
    child:send("sv_stop" ..  sv);
end
functions.sv_stop = __sv_stop;

function __sv_pause(sv)
    child:send("sv_pause" ..  sv);
end
functions.sv_pause = __sv_pause;

function __sv_resume(sv)
    child:send("sv_resume" ..  sv);
end
functions.sv_resume = __sv_resume;

function __sv_sync_resume(sv)
    child:send("sv_sync_resume" ..  sv);
end
functions.sv_sync_resume = __sv_sync_resume;

function __sv_set_autostop(sv,autostop)
    child:send("sv_set_autostop" .. sv .. " " ..autostop);
end
functions.sv_set_autostop = __sv_set_autostop;

function __sv_get_autostop(sv)
    child:send("sv_get_autostop" ..  sv);
end
functions.sv_get_autostop = __sv_get_autostop;

-- NOT FOR PIXILANG
--[[
function __sv_end_of_song()
    child:send("sv_end_of_song 0");
end
functions.sv_end_of_song = __sv_end_of_song;
]]

function __sv_get_status(sv)
    child:send("sv_get_status" ..  sv);
end
functions.sv_get_status = __sv_get_status;

function __sv_rewind(sv, line_num)
    child:send("sv_rewind" .. sv .. " " .. line_num);
end
functions.sv_rewind = __sv_rewind;

function __sv_volume(sv, vol)
    child:send("sv_volume" .. sv .. " " .. vol);
end
functions.sv_volume = __sv_volume;

function __sv_get_current_line(sv)
    child:send("sv_get_current_line" ..  sv);
end
functions.sv_get_current_line = __sv_get_current_line;

function __sv_get_current_line2(sv)
    child:send("sv_get_current_line2" ..  sv);
end
functions.sv_get_current_line2 = __sv_get_current_line2;

function __sv_get_current_signal_level(sv, channel)
    child:send("sv_get_current_signal_level" .. sv .. " " .. channel);
end
functions.sv_get_current_signal_level = __sv_get_current_signal_level;

-- Project info

-- NOT FOR PIXILANG
--[[
function __sv_get_song_name()
    child:send("sv_get_song_name 0");
end
functions.sv_get_song_name = __sv_get_song_name;
]]

function __sv_get_name(sv)
    child:send("sv_get_name" ..  sv);
end
functions.sv_get_name = __sv_get_name;

-- NOT FOR PIXILANG
--[[
function __sv_set_song_name()
    child:send("sv_set_song_name 0");
end
functions.sv_set_song_name = __sv_set_song_name;
]]

function __sv_set_name(sv, name)
    child:send("sv_set_name" .. sv .. " " .. name);
end
functions.sv_set_name = __sv_set_name;

-- NOT FOR PIXILANG
--[[
function __sv_get_song_bpm()
    child:send("sv_get_song_bpm 0");
end
functions.sv_get_song_bpm = __sv_get_song_bpm;

function __sv_get_song_tpl()
    child:send("sv_get_song_tpl 0");
end
functions.sv_get_song_tpl = __sv_get_song_tpl;
]]

function __sv_get_bpm(sv)
    child:send("sv_get_bpm" ..  sv);
end
functions.sv_get_bpm = __sv_get_bpm;

function __sv_get_tpl(sv)
    child:send("sv_get_tpl" ..  sv);
end
functions.sv_get_tpl = __sv_get_tpl;

-- NOT FOR PIXILANG
--[[
function __sv_get_song_length_frames()
    child:send("sv_get_song_length_frames 0");
end
functions.sv_get_song_length_frames = __sv_get_song_length_frames;

function __sv_get_song_length_lines()
    child:send("sv_get_song_length_lines 0");
end
functions.sv_get_song_length_lines = __sv_get_song_length_lines;
]]

function __sv_get_length_frames(sv)
    child:send("sv_get_length_frames" ..  sv);
end
functions.sv_get_length_frames = __sv_get_length_frames;

function __sv_get_length_lines(sv)
    child:send("sv_get_length_lines" ..  sv);
end
functions.sv_get_length_lines = __sv_get_length_lines;

function __sv_get_time_map(sv, start_line, len, dest, flags)
    child:send("sv_get_time_map" .. sv .. " " .. start_line .. " " .. len .. " " .. dest .. " " .. flags);
end
functions.sv_get_time_map = __sv_get_time_map;

-- Events
function __sv_set_event_t(sv, set, t)
    child:send("sv_set_event_t" .. sv .. " " .. set .. " " .. t);
end
functions.sv_set_event_t = __sv_set_event_t;

function __sv_send_event(sv, track_num, note, vel, module, ctl, ctl_val)
    child:send("sv_send_event" .. sv .. " " .. track_num .. " " .. note .. " " .. vel .. " " .. module .. " " .. ctl .. " " .. ctl_val);
end
functions.sv_send_event = __sv_send_event;

-- Modules
function __sv_new_module(sv, type, name, x, y, z)
    child:send("sv_new_module" .. sv .. " " .. type .. " " .. name .. " " .. x .. " " .. y .. " " .. z);
end
functions.sv_new_module = __sv_new_module;

function __sv_remove_module(sv, mod_num)
    child:send("sv_remove_module" .. sv .. " " .. mod_num);
end
functions.sv_remove_module = __sv_remove_module;

function __sv_connect_module(sv, source, destination)
    child:send("sv_connect_module" .. sv .. " " .. source .. " " .. destination);
end
functions.sv_connect_module = __sv_connect_module;

function __sv_disconnect_module(sv, source, destination)
    child:send("sv_disconnect_module" .. sv .. " " .. source .. " " .. destination);
end
functions.sv_disconnect_module = __sv_disconnect_module;

function __sv_load_module(sv, filename, x, y, z)
    child:send("sv_load_module" .. sv .. " " .. filename .. " " .. x .. " " .. y .. " " .. z);
end
functions.sv_load_module = __sv_load_module;

-- NOT FOR PIXILANG
--[[
function __sv_load_module_from_memory()
    child:send("sv_load_module_from_memory 0");
end
functions.sv_load_module_from_memory = __sv_load_module_from_memory;
]]

function __sv_fload_module(sv, f, x, y, z)
    child:send("sv_fload_module" .. sv .. " " .. f .. " " .. x .. " " .. y .. " " .. z);
end
functions.sv_fload_module = __sv_fload_module;

function __sv_sampler_load(sv, mod_num, filename, sample_slot)
    child:send("sv_sampler_load" .. sv .. " " .. mod_num .. " " .. filename .. " " .. sample_slot);
end
functions.sv_sampler_load = __sv_sampler_load;

-- NOT FOR PIXILANG
--[[
function __sv_sampler_load_from_memory()
    child:send("sv_sampler_load_from_memory 0");
end
functions.sv_sampler_load_from_memory = __sv_sampler_load_from_memory;
]]

function __sv_sampler_fload(sv, mod_num, f, sample_slot)
    child:send("sv_sampler_fload" .. sv .. " " .. mod_num .. " " .. f .. " " .. sample_slot);
end
functions.sv_sampler_fload = __sv_sampler_fload;

function __sv_metamodule_load(sv, mod_num, filename)
    child:send("sv_metamodule_load" .. sv .. " " .. mod_num .. " " .. filename);
end
functions.sv_metamodule_load = __sv_metamodule_load;

-- NOT FOR PIXILANG
--[[
function __sv_metamodule_load_from_memory()
    child:send("sv_metamodule_load_from_memory 0");
end
functions.sv_metamodule_load_from_memory = __sv_metamodule_load_from_memory;
]]

function __sv_metamodule_fload(sv, mod_num, f)
    child:send("sv_metamodule_fload" .. sv .. " " .. mod_num .. " " .. f);
end
functions.sv_metamodule_fload = __sv_metamodule_fload;

function __sv_vplayer_load(sv, mod_num, filename)
    child:send("sv_vplayer_load" .. sv .. " " .. mod_num .. " " .. filename);
end
functions.sv_vplayer_load = __sv_vplayer_load;

-- NOT FOR PIXILANG
--[[
function __sv_vplayer_load_from_memory()
    child:send("sv_vplayer_load_from_memory 0");
end
functions.sv_vplayer_load_from_memory = __sv_vplayer_load_from_memory;
]]

function __sv_vplayer_fload(sv, mod_num, f)
    child:send("sv_vplayer_fload" .. sv .. " " .. mod_num .. " " .. f);
end
functions.sv_vplayer_fload = __sv_vplayer_fload;

function __sv_get_number_of_modules(sv)
    child:send("sv_get_number_of_modules" ..  sv);
end
functions.sv_get_number_of_modules = __sv_get_number_of_modules;

function __sv_find_module(sv, name)
    child:send("sv_find_module" .. sv .. " " ..name);
end
functions.sv_find_module = __sv_find_module;

function __sv_get_module_flags(sv,mod_num)
    child:send("sv_get_module_flags" .. sv .. " " ..mod_num);
end
functions.sv_get_module_flags = __sv_get_module_flags;

function __sv_get_module_inputs(sv,mod_num)
    child:send("sv_get_module_inputs" .. sv .. " " ..mod_num);
end
functions.sv_get_module_inputs = __sv_get_module_inputs;

function __sv_get_module_outputs(sv,mod_num)
    child:send("sv_get_module_outputs" .. sv .. " " ..mod_num);
end
functions.sv_get_module_outputs = __sv_get_module_outputs;

function __sv_get_module_type(sv,mod_num)
    child:send("sv_get_module_type" .. sv .. " " ..mod_num);
end
functions.sv_get_module_type = __sv_get_module_type;

function __sv_get_module_name(sv,mod_num)
    child:send("sv_get_module_name" .. sv .. " " ..mod_num);
end
functions.sv_get_module_name = __sv_get_module_name;

function __sv_set_module_name(sv,mod_num, name)
    child:send("sv_set_module_name" .. sv .. " " ..mod_num, name);
end
functions.sv_set_module_name = __sv_set_module_name;

function __sv_get_module_xy(sv,mod_num)
    child:send("sv_get_module_xy" .. sv .. " " ..mod_num);
end
functions.sv_get_module_xy = __sv_get_module_xy;

function __sv_set_module_xy(sv,mod_num, x, y)
    child:send("sv_set_module_xy" .. sv .. " " ..mod_num, x, y);
end
functions.sv_set_module_xy = __sv_set_module_xy;

function __sv_get_module_color(sv,mod_num)
    child:send("sv_get_module_color" .. sv .. " " ..mod_num);
end
functions.sv_get_module_color = __sv_get_module_color;

function __sv_set_module_color(sv,mod_num, color)
    child:send("sv_set_module_color" .. sv .. " " ..mod_num, color);
end
functions.sv_set_module_color = __sv_set_module_color;

function __sv_get_module_finetune(sv,mod_num)
    child:send("sv_get_module_finetune" .. sv .. " " ..mod_num);
end
functions.sv_get_module_finetune = __sv_get_module_finetune;

function __sv_set_module_finetune(sv,mod_num, finetune)
    child:send("sv_set_module_finetune" .. sv .. " " ..mod_num, finetune);
end
functions.sv_set_module_finetune = __sv_set_module_finetune;

function __sv_set_module_relnote(sv,mod_num, relative_note)
    child:send("sv_set_module_relnote" .. sv .. " " ..mod_num, relative_note);
end
functions.sv_set_module_relnote = __sv_set_module_relnote;

-- NOT FOR PIXILANG
--[[
function __sv_get_module_scope2()
    child:send("sv_get_module_scope2 0");
end
functions.sv_get_module_scope2 = __sv_get_module_scope2;
]]

function __sv_get_module_scope(sv, mod_num, channel, dest_buf, samples_to_read)
    child:send("sv_get_module_scope" .. sv .. " " .. mod_num .. " " .. channel .. " " .. dest_buf .. " " .. samples_to_read);
end
functions.sv_get_module_scope = __sv_get_module_scope;

function __sv_module_curve(sv, mod_num, curve_num, data, len, w)
    child:send("sv_module_curve" .. sv .. " " .. mod_num .. " " .. curve_num .. " " .. data .. " " .. len .. " " .. w);
end
functions.sv_module_curve = __sv_module_curve;

function __sv_get_number_of_module_ctls(sv, mod_num)
    child:send("sv_get_number_of_module_ctls" .. sv .. " " .. mod_num);
end
functions.sv_get_number_of_module_ctls = __sv_get_number_of_module_ctls;

function __sv_get_module_ctl_name(sv, mod_num, ctl_num)
    child:send("sv_get_module_ctl_name" .. sv .. " " .. mod_num .. " " .. ctl_num);
end
functions.sv_get_module_ctl_name = __sv_get_module_ctl_name;

function __sv_get_module_ctl_value(sv, mod_num, ctl_num, scaled)
    child:send("sv_get_module_ctl_value" .. sv .. " " .. mod_num .. " " .. ctl_num .. " " .. scaled);
end
functions.sv_get_module_ctl_value = __sv_get_module_ctl_value;

function __sv_set_module_ctl_value(sv, mod_num, ctl_num, val, scaled)
    child:send("sv_set_module_ctl_value" .. sv .. " " .. mod_num .. " " .. ctl_num .. " " .. val .. " " .. scaled);
end
functions.sv_set_module_ctl_value = __sv_set_module_ctl_value;

function __sv_get_module_ctl_min(sv, mod_num, ctl_num, scaled)
    child:send("sv_get_module_ctl_min" .. sv .. " " .. mod_num .. " " .. ctl_num .. " " .. scaled);
end
functions.sv_get_module_ctl_min = __sv_get_module_ctl_min;

function __sv_get_module_ctl_max(sv, mod_num, ctl_num, scaled)
    child:send("sv_get_module_ctl_max" .. sv .. " " .. mod_num .. " " .. ctl_num .. " " .. scaled);
end
functions.sv_get_module_ctl_max = __sv_get_module_ctl_max;

function __sv_get_module_ctl_offset(sv, mod_num, ctl_num)
    child:send("sv_get_module_ctl_offset" .. sv .. " " .. mod_num .. " " .. ctl_num);
end
functions.sv_get_module_ctl_offset = __sv_get_module_ctl_offset;

function __sv_get_module_ctl_type(sv, mod_num, ctl_num)
    child:send("sv_get_module_ctl_type" .. sv .. " " .. mod_num .. " " .. ctl_num);
end
functions.sv_get_module_ctl_type = __sv_get_module_ctl_type;

function __sv_get_module_ctl_group(sv, mod_num, ctl_num)
    child:send("sv_get_module_ctl_group" .. sv .. " " .. mod_num .. " " .. ctl_num);
end
functions.sv_get_module_ctl_group = __sv_get_module_ctl_group;

-- Patterns
function __sv_new_pattern(sv, clone, x, y, tracks, lines, icon_seed, name)
    child:send("sv_new_pattern" .. sv .. " " .. clone .. " " .. x .. " " .. y .. " " .. tracks .. " " .. lines .. " " .. icon_seed .. " " .. name);
end
functions.sv_new_pattern = __sv_new_pattern;

function __sv_remove_pattern(sv, pat_num)
    child:send("sv_remove_pattern" .. sv .. " " .. pat_num);
end
functions.sv_remove_pattern = __sv_remove_pattern;

function __sv_get_number_of_patterns(sv)
    child:send("sv_get_number_of_patterns" ..  sv);
end
functions.sv_get_number_of_patterns = __sv_get_number_of_patterns;

function __sv_find_pattern(sv, name)
    child:send("sv_find_pattern" .. sv .. " " .. name);
end
functions.sv_find_pattern = __sv_find_pattern;

function __sv_get_pattern_x(sv, pat_num)
    child:send("sv_get_pattern_x" .. sv .. " " .. pat_num);
end
functions.sv_get_pattern_x = __sv_get_pattern_x;

function __sv_get_pattern_y(sv, pat_num)
    child:send("sv_get_pattern_y" .. sv .. " " .. pat_num);
end
functions.sv_get_pattern_y = __sv_get_pattern_y;

function __sv_set_pattern_xy(sv, pat_num, x, y)
    child:send("sv_set_pattern_xy" .. sv .. " " .. pat_num .. " " .. x .. " " .. y);
end
functions.sv_set_pattern_xy = __sv_set_pattern_xy;

function __sv_get_pattern_tracks(sv, pat_num)
    child:send("sv_get_pattern_tracks" .. sv .. " " .. pat_num);
end
functions.sv_get_pattern_tracks = __sv_get_pattern_tracks;

function __sv_get_pattern_lines(sv, pat_num)
    child:send("sv_get_pattern_lines" .. sv .. " " .. pat_num);
end
functions.sv_get_pattern_lines = __sv_get_pattern_lines;

function __sv_set_pattern_size(sv, pat_num, tracks, lines)
    child:send("sv_set_pattern_size" .. sv .. " " .. pat_num .. " " .. tracks .. " " .. lines);
end
functions.sv_set_pattern_size = __sv_set_pattern_size;

function __sv_get_pattern_name(sv, pat_num)
    child:send("sv_get_pattern_name" .. sv .. " " .. pat_num);
end
functions.sv_get_pattern_name = __sv_get_pattern_name;

function __sv_set_pattern_name(sv, pat_num, name)
    child:send("sv_set_pattern_name" .. sv .. " " .. pat_num .. " " .. name);
end
functions.sv_set_pattern_name = __sv_set_pattern_name;

function __sv_get_pattern_data(sv, pat_num)
    child:send("sv_get_pattern_data" .. sv .. " " .. pat_num);
end
functions.sv_get_pattern_data = __sv_get_pattern_data;

-- NOT FOR PIXILANG
--[[
function __sv_set_pattern_data()
    child:send("sv_set_pattern_data 0");
end
functions.sv_set_pattern_data = __sv_set_pattern_data;
]]

function __sv_set_pattern_event(sv, pat, track, line, nn, vv, mm, ccee, xxyy )
    child:send("sv_set_pattern_event" .. sv .. " " .. pat .. " " .. track .. " " .. line .. " " .. nn .. " " .. vv .. " " .. mm .. " " .. ccee .. " " .. xxyy);
end
functions.sv_set_pattern_event = __sv_set_pattern_event;

function __sv_get_pattern_event(sv, pat, track, line, column)
    child:send("sv_get_pattern_event" .. sv .. " " .. pat .. " " .. track .. " " .. line .. " " .. column);
end
functions.sv_get_pattern_event = __sv_get_pattern_event;

function __sv_pattern_mute(sv, pat, mute)
    child:send("sv_pattern_mute" .. sv .. " " .. pat .. " " .. mute);
end
functions.sv_pattern_mute = __sv_pattern_mute;

-- NOT FOR PIXILANG
--[[
-- Other
function __sv_get_ticks()
    child:send("sv_get_ticks 0");
end
functions.sv_get_ticks = __sv_get_ticks;

function __sv_get_ticks_per_second()
    child:send("sv_get_ticks_per_second 0");
end
functions.sv_get_ticks_per_second = __sv_get_ticks_per_second;

function __sv_get_log()
    child:send("sv_get_log 0");
end
functions.sv_get_log = __sv_get_log;
]]

-- Time
function __start_timer(timer_num)
    child:send("start_timer" ..  timer_num);
end
functions.start_timer = __start_timer;

function __get_timer(timer_num)
    child:send("get_timer" ..  timer_num);
end
functions.get_timer = __get_timer;

function __get_year()
    child:send("get_year 0");
end
functions.get_year = __get_year;

function __get_month()
    child:send("get_month 0");
end
functions.get_month = __get_month;

function __get_day()
    child:send("get_day 0");
end
functions.get_day = __get_day;

function __get_hours()
    child:send("get_hours 0");
end
functions.get_hours = __get_hours;

function __get_minutes()
    child:send("get_minutes 0");
end
functions.get_minutes = __get_minutes;

function __get_seconds()
    child:send("get_seconds 0");
end
functions.get_seconds = __get_seconds;

function __get_ticks()
    child:send("get_ticks 0");
end
functions.get_ticks = __get_ticks;

function __get_tps()
    child:send("get_tps 0");
end
functions.get_tps = __get_tps;

function __sleep(ms)
    child:send("sleep" ..  ms);
end
functions.sleep = __sleep;

-- Events
function __get_event()
    child:send("get_event 0");
end
functions.get_event = __get_event;

function __set_quit_action(action)
    child:send("set_quit_action" ..  action);
end
functions.set_quit_action = __set_quit_action;

-- Threads
function __thread_create(thread_func, user_data, flags)
    child:send("thread_create" .. thread_func .. " " .. user_data .. " " .. flags);
end
functions.thread_create = __thread_create;

function __thread_destroy(thread_id, timeout_ms)
    child:send("thread_destroy" .. thread_id .. " " .. timeout_ms);
end
functions.thread_destroy = __thread_destroy;

function __mutex_create()
    child:send("mutex_create 0");
end
functions.mutex_create = __mutex_create;

function __mutex_destroy(mutex)
    child:send("mutex_destroy" ..  mutex);
end
functions.mutex_destroy = __mutex_destroy;

function __mutex_lock(mutex)
    child:send("mutex_lock" ..  mutex);
end
functions.mutex_lock = __mutex_lock;

function __mutex_trylock(mutex)
    child:send("mutex_trylock" ..  mutex);
end
functions.mutex_trylock = __mutex_trylock;

function __mutex_unlock(mutex)
    child:send("mutex_unlock" ..  mutex);
end
functions.mutex_unlock = __mutex_unlock;

-- Mathematical
function __acos(x)
    child:send("acos" ..  x);
end
functions.acos = __acos;

function __acosh(x)
    child:send("acosh" ..  x);
end
functions.acosh = __acosh;

function __asin(x)
    child:send("asin" ..  x);
end
functions.asin = __asin;

function __asinh(x)
    child:send("asinh" ..  x);
end
functions.asinh = __asinh;

function __atan(x)
    child:send("atan" ..  x);
end
functions.atan = __atan;

function __atan2(x,y)
    child:send("atan2" .. x .. " " ..y);
end
functions.atan2 = __atan2;

function __atanh(x)
    child:send("atanh" ..  x);
end
functions.atanh = __atanh;

function __ceil(x)
    child:send("ceil" ..  x);
end
functions.ceil = __ceil;

function __cos(x)
    child:send("cos" ..  x);
end
functions.cos = __cos;

function __cosh(x)
    child:send("cosh" ..  x);
end
functions.cosh = __cosh;

function __exp(x)
    child:send("exp" ..  x);
end
functions.exp = __exp;

function __exp2(x)
    child:send("exp2" ..  x);
end
functions.exp2 = __exp2;

function __expm1(x)
    child:send("expm1" ..  x);
end
functions.expm1 = __expm1;

function __abs(x)
    child:send("abs" ..  x);
end
functions.abs = __abs;

function __floor(x)
    child:send("floor" ..  x);
end
functions.floor = __floor;

function __mod(x,y)
    child:send("mod" .. x .. " " ..y);
end
functions.mod = __mod;

function __log(x)
    child:send("log" ..  x);
end
functions.log = __log;

function __log2(x)
    child:send("log2" ..  x);
end
functions.log2 = __log2;

function __log10(x)
    child:send("log10" ..  x);
end
functions.log10 = __log10;

function __pow(x,y)
    child:send("pow" .. x .. " " ..y);
end
functions.pow = __pow;

function __sin(x)
    child:send("sin" ..  x);
end
functions.sin = __sin;

function __sinh(x)
    child:send("sinh" ..  x);
end
functions.sinh = __sinh;

function __sqrt(x)
    child:send("sqrt" ..  x);
end
functions.sqrt = __sqrt;

function __tan(x)
    child:send("tan" ..  x);
end
functions.tan = __tan;

function __tanh(x)
    child:send("tanh" ..  x);
end
functions.tanh = __tanh;

function __rand()
    child:send("rand 0");
end
functions.rand = __rand;

function __rand_seed(x)
    child:send("rand_seed" ..  x);
end
functions.rand_seed = __rand_seed;

-- Type punning
--value, mode, intermediate_value_bits 
function __reinterpret_type(value, mode, intermediate_value_bits)
    child:send("reinterpret_type" .. value .. " " .. mode .. " " .. intermediate_value_bits);
end
functions.reinterpret_type = __reinterpret_type;

-- Data processing
function __op_cn(opcode, C1, N)
    child:send("op_cn" .. opcode .. " " .. C1 .. " " .. N);
end
functions.op_cn = __op_cn;

function __op_cn1(opcode, C1, N, x , xsize)
    child:send("op_cn" .. opcode .. " " .. C1 .. " " .. N .. " " .. x , xsize);
end
functions.op_cn_ = __op_cn1;


function __op_cn2(opcode, C1, N, x, y, xsize, ysize)
    child:send("op_cn" .. opcode .. " " .. C1 .. " " .. N .. " " .. x .. " " .. y .. " " .. xsize .. " " .. ysize);
end
functions.op_cn2 = __op_cn2;

function __op_cc(opcode, C1, C2)
    child:send("op_cc" .. opcode .. " " .. C1 .. " " .. C2);
end
functions.op_cc = __op_cc;

function __op_cc1(opcode, C1, C2, dest_x, src_x, xsize)
    child:send("op_cc" .. opcode .. " " .. C1 .. " " .. C2 .. " " .. dest_x .. " " .. src_x .. " " .. xsize);
end
functions.op_cc1 = __op_cc1;

function __op_cc2(opcode, C1, C2, dest_x, dest_y, src_x, src_y, xsize, ysize)
    child:send("op_cc" .. opcode .. " " .. C1 .. " " .. C2 .. " " .. dest_x .. " " .. dest_y .. " " .. src_x .. " " .. src_y .. " " .. xsize .. " " .. ysize);
end
functions.op_cc2 = __op_cc2;

function __op_ccn(opcode, C1, C2, N)
    child:send("op_ccn" .. opcode .. " " .. C1 .. " " .. C2 .. " " .. N);
end
functions.op_ccn = __op_ccn;

function __op_ccn1(opcode, C1, C2, N, dest_x, src_x, xsize)
    child:send("op_ccn" .. opcode .. " " .. C1 .. " " .. C2 .. " " .. N .. " " .. dest_x .. " " .. src_x .. " " .. xsize);
end
functions.op_ccn1 = __op_ccn1;

function __op_ccn2(opcode, C1, C2, N, dest_x, dest_y, src_x, src_y, xsize, ysize)
    child:send("op_ccn" .. opcode .. " " .. C1 .. " " .. C2 .. " " .. N .. " " .. dest_x .. " " .. dest_y .. " " .. src_x .. " " .. src_y .. " " .. xsize .. " " .. ysize);
end
functions.op_ccn2 = __op_ccn2;

function __generator(opcode, pixi, phase, amplitude, delta_x, delta_y, x, y, xsize, ysize)
    child:send("generator" .. opcode .. " " .. pixi .. " " .. phase .. " " .. amplitude .. " " .. delta_x .. " " .. delta_y .. " " .. x .. " " .. y .. " " .. xsize .. " " .. ysize);
end
functions.generator = __generator;

function __wavetable_generator(dest, dest_offset, dest_length, table, amp, amp_delta, pos, pos_delta, gen_offset, gen_step, gen_count)
    child:send("wavetable_generator" .. dest .. " " .. dest_offset .. " " .. dest_length .. " " .. table .. " " .. amp .. " " .. amp_delta .. " " .. pos .. " " .. pos_delta .. " " .. gen_offset .. " " .. gen_step .. " " .. gen_count);
end
functions.wavetable_generator = __wavetable_generator;

function __sampler(sample_info)
    child:send("sampler" ..  sample_info);
end
functions.sampler = __sampler;

function __envelope2p(data_cont, v1, v2, offset, size, dc_offset1, dc_offset2)
    child:send("envelope2p" .. data_cont .. " " .. v1 .. " " .. v2 .. " " .. offset .. " " .. size .. " " .. dc_offset1 .. " " .. dc_offset2);
end
functions.envelope2p = __envelope2p;

function __gradient(pixi_container, val1, val2, val3, val4, x, y, xsize, ysize, x_step, y_step)
    child:send("gradient" .. pixi_container .. " " .. val1 .. " " .. val2 .. " " .. val3 .. " " .. val4 .. " " .. x .. " " .. y .. " " .. xsize .. " " .. ysize .. " " .. x_step .. " " .. y_step);
end
functions.gradient = __gradient;

function __fft(inverse, im, re, size)
    child:send("fft" .. inverse .. " " .. im .. " " .. re .. " " .. size);
end
functions.fft = __fft;

function __new_filter(flags_for_future_use)
    child:send("new_filter" ..  flags_for_future_use);
end
functions.new_filter = __new_filter;

function __remove_filter(filter)
    child:send("remove_filter" ..  filter);
end
functions.remove_filter = __remove_filter;

function __reset_filter(filter)
    child:send("reset_filter" ..  filter);
end
functions.reset_filter = __reset_filter;

function __init_filter(filter, a, b, rshift, flags)
    child:send("init_filter" .. filter .. " " .. a .. " " .. b .. " " .. rshift .. " " .. flags);
end
functions.init_filter = __init_filter;

function __apply_filter(filter, output, input, flags, offset, size)
    child:send("apply_filter" .. filter .. " " .. output .. " " .. input .. " " .. flags .. " " .. offset .. " " .. size);
end
functions.apply_filter = __apply_filter;

--dest, src, values, dest_offset, src_offset, size 
function __replace_values(dest, src, values, dest_offset, src_offset, size)
    child:send("replace_values" .. dest .. " " .. src .. " " .. values .. " " .. dest_offset .. " " .. src_offset .. " " .. size);
end
functions.replace_values = __replace_values;

function __copy_and_resize(dest, src, flags, dest_x, dest_y, dest_rect_xsize, dest_rect_ysize, src_x, src_y, src_rect_xsize, src_rect_ysize)
    child:send("copy_and_resize" .. dest .. " " .. src .. " " .. flags .. " " .. dest_x .. " " .. dest_y .. " " .. dest_rect_xsize .. " " .. dest_rect_ysize .. " " .. src_x .. " " .. src_y .. " " .. src_rect_xsize .. " " .. src_rect_ysize);
end
functions.copy_and_resize = __copy_and_resize;

function __conv_filter(dest, src, kernel, div, offset, flags, kernel_xcenter, kernel_ycenter, dest_x, dest_y, src_x, src_y, xsize, ysize, xstep, ystep)
    child:send("conv_filter" .. dest .. " " .. src .. " " .. kernel .. " " .. div .. " " .. offset .. " " .. flags .. " " .. kernel_xcenter .. " " .. kernel_ycenter .. " " .. dest_x .. " " .. dest_y .. " " .. src_x .. " " .. src_y .. " " .. xsize .. " " .. ysize .. " " .. xstep .. " " .. ystep);
end
functions.conv_filter = __conv_filter;

-- Dialogs
function __file_dialog(dialog_name, mask, id, default_name, flags)
    child:send("file_dialog" .. dialog_name .. " " .. mask .. " " .. id .. " " .. default_name .. " " .. flags);
end
functions.file_dialog = __file_dialog;

function __prefs_dialog()
    child:send("prefs_dialog 0");
end
functions.prefs_dialog = __prefs_dialog;

function __textinput_dialog(default_text, dialog_name)
    child:send("textinput_dialog" .. default_text .. " " .. dialog_name);
end
functions.textinput_dialog = __textinput_dialog;

-- Network
function __open_url(url_string)
    child:send("open_url" ..  url_string);
end
functions.open_url = __open_url;

-- Native code
function __dlopen(lib_file_name)
    child:send("dlopen" ..  lib_file_name);
end
functions.dlopen = __dlopen;

function __dlclose(lib_id)
    child:send("dlclose" ..  lib_id);
end
functions.dlclose = __dlclose;

function __dlsym(lib_id, symbol_name, format, calling_convention)
    child:send("dlsym" .. lib_id .. " " .. symbol_name .. " " .. format .. " " .. calling_convention);
end
functions.dlsym = __dlsym;

function __dlcall(lib_id, symbol_id, optional_function_parameters)
    child:send("dlcall" .. lib_id .. " " .. symbol_id .. " " .. optional_function_parameters);
end
functions.dlcall = __dlcall;

-- System functions
function __system(command)
    child:send("system" ..  command);
end
functions.system = __system;

function __argc()
    child:send("argc 0");
end
functions.argc = __argc;

function __argv(n)
    child:send("argv" ..  n);
end
functions.argv = __argv;

function __exit(exit_code)
    child:send("exit" ..  exit_code);
end
functions.exit = __exit;

-- brute functions

function container_count(target)
    child:process("_container_count " .. target);
end
functions.container_count = container_count;

function print_container_count()
    child:process("print_container_count 0");
end
functions.print_container_count = print_container_count;

function log_container_count()
    child:process("log_container_count 0");
end
functions.log_container_count = log_container_count;

function flex(object, size)
    child:process("flex " .. object .. " " .. size);
end
functions.flex = flex;

function refresh_seed()
    child:process("refresh_seed 0");
end
functions.refresh_seed = refresh_seed;

function random(target, min, max)
    child:process("_random " .. target .. " " .. min .. " " .. max);
end
functions.random = random;

function default(obj, default)
    child:process("default " .. obj .. " " .. default);
end
functions.default = default;

function create(name, value)
    child:process("create " .. name .. " " .. value);
end
functions.create = create;

function create_empty(name)
    child:process("create_empty " .. name);
end
functions.create_empty = create_empty;

function create_array(name, size)
    child:process("create_array " .. name .. " " .. size);
end
functions.create_array = create_array;

function create_matrix(name, xsize, ysize)
    child:process("create_matrix " .. name .. " " .. xsize .. " " .. ysize);
end
functions.create_matrix = create_matrix;

function list_push(list, element)
    child:process("list_push " .. list .. " " .. element);
end
functions.list_push = list_push;

function list_pop(list)
    child:process("list_pop " .. list);
end
functions.list_pop = list_pop;

function list_insert(list, element, position)
    child:process("list_insert " .. list .. " " .. element .. " " .. position);
end
functions.list_insert = list_insert;

function list_remove(list, position)
    child:process("list_remove " .. list .. " " .. position);
end
functions.list_remove = list_remove;

function _list_find(list, element, target)
    child:process("_list_find " .. list .. " " .. element .. " " .. target);
end
functions._list_find = _list_find;

function _string_new(size, target)
    child:process("_string_new " .. size .. " " .. target);
end
functions._string_new = _string_new;

function _string_sub(string, start, _end, target)
    child:process("_string_sub " .. string .. " " .. start .. " " .. _end .. " " .. target);
end
functions._string_sub = _string_sub;

function _string_ocurrences(str1, str2, target)
    child:process("_string_ocurrences " .. str1 .. " " .. str2 .. " " .. target);
end
functions._string_ocurrences = _string_ocurrences;

function _string_ocurrences_advanced(str1, str2, target)
    child:process("_string_ocurrences_advanced " .. str1 .. " " .. str2 .. " " .. target);
end
functions._string_ocurrences_advanced = _string_ocurrences_advanced;

function _string_split(string, separator, target)
    child:process("_string_split " .. string .. " " .. separator .. " " .. target);
end
functions._string_split = _string_split;

function _string_replace(string, oldstr, newstr, target)
    child:process("_string_replace " .. string .. " " .. oldstr .. " " .. newstr .. " " .. target);
end
functions._string_replace = _string_replace;

function _string_replace_char(string, oldchar, newchar, target)
    child:process("_string_replace_char " .. string .. " " .. oldchar .. " " .. newchar .. " " .. target);
end
functions._string_replace_char = _string_replace_char;

function _vector2(x, y, target)
    child:process("_vector2 " .. x .. " " .. y .. " " .. target);
end
functions._vector2 = _vector2;

function _read_file(filename, target)
    child:process("_read_file " .. filename .. " " .. target);
end
functions._read_file = _read_file;

function write_file(filename, content)
    child:process("write_file " .. filename .. " " .. content);
end
functions.write_file = write_file;

function _ini_load(file, target)
    child:process("_ini_load " .. file .. " " .. target);
end
functions._ini_load = _ini_load;

function ini_save(file, ini)
    child:process("ini_save " .. file .. " " .. ini);
end
functions.ini_save = ini_save;

function _layer(target, container)
    child:process("_layer " .. target .. " " .. container);
end
functions._layer = _layer;

function _layers_merge(layers, target)
    child:process("_layers_merge " .. layers .. " " .. target);
end
functions._layers_merge = _layers_merge;

function layers_render(layers)
    child:process("layers_render " .. layers);
end
functions.layers_render = layers_render;

function keyboard_new()
    child:process("keyboard_new 0");
end
functions.keyboard_new = keyboard_new;

function keyboard_add(keyboard, keycode, up, callback, arg)
    child:process("keyboard_add " .. keyboard .. " " .. keycode .. " " .. up .. " " .. callback .. " " .. arg);
end
functions.keyboard_add = keyboard_add;

function eventor(system)
    child:process("eventor" .. system);
end
functions.eventor = eventor;

function system_loop(system, callback, arg)
    child:process("system_loop " .. system .. " " .. callback .. " " .. arg);
end
functions.system_loop = system_loop;

function _system_new(name, configpath)
    child:process("_system_new " .. name .. " " .. configpath);
end
functions._system_new = _system_new;

local bruter = {};
bruter.functions = functions;
bruter.constants = constants;
return bruter;