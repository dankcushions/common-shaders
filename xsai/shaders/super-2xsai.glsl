// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _otexCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0006;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _c0032;
vec2 _c0034;
vec2 _c0036;
vec2 _c0038;
vec2 _c0040;
vec2 _c0044;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
vec2 _c0062;
float _TMP63;
float _TMP67;
float _TMP71;
float _TMP75;
float _TMP79;
float _TMP83;
float _TMP87;
float _TMP91;
float _TMP95;
float _TMP99;
float _TMP103;
float _TMP107;
float _TMP111;
float _TMP115;
float _TMP119;
float _TMP123;
int _x0128;
int _y0128;
int _r0128;
int _x0130;
int _y0130;
int _r0130;
int _x0132;
int _y0132;
int _r0132;
int _x0134;
int _y0134;
int _r0134;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    output_dummy _OUT;
    vec2 _ps;
    vec2 _dx;
    vec2 _dy;
    vec2 _g1;
    vec2 _g2;
    vec2 _pixcoord;
    vec2 _fp;
    vec2 _pC4;
    vec2 _pC8;
    vec3 _p00;
    vec3 _p10;
    vec3 _p01;
    vec3 _p11;
    int _r1;
    _ps = vec2(9.99000013E-01/TextureSize.x, 9.99000013E-01/TextureSize.y);
    _dx = vec2(_ps.x, 0.00000000E+00);
    _dy = vec2(0.00000000E+00, _ps.y);
    _g1 = vec2(_ps.x, _ps.y);
    _g2 = vec2(-_ps.x, _ps.y);
    _pixcoord = TEX0.xy/_ps;
    _fp = fract(_pixcoord);
    _pC4 = TEX0.xy - _fp*_ps;
    _pC8 = _pC4 + _g1;
    _c0032 = _pC4 - _g1;
    _TMP0 = COMPAT_TEXTURE(Texture, _c0032);
    _c0034 = _pC4 - _dy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0034);
    _c0036 = _pC4 - _g2;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0036);
    _c0038 = (_pC4 - _g2) + _dx;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0038);
    _c0040 = _pC4 - _dx;
    _TMP4 = COMPAT_TEXTURE(Texture, _c0040);
    _TMP5 = COMPAT_TEXTURE(Texture, _pC4);
    _c0044 = _pC4 + _dx;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0044);
    _c0046 = _pC8 - _g2;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0046);
    _c0048 = _pC4 + _g2;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0048);
    _c0050 = _pC4 + _dy;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0050);
    _c0052 = _pC4 + _g1;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0052);
    _c0054 = _pC8 + _dx;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0054);
    _c0056 = _pC4 + _g2 + _dy;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0056);
    _c0058 = _pC8 + _g2;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0058);
    _c0060 = _pC8 + _dy;
    _TMP14 = COMPAT_TEXTURE(Texture, _c0060);
    _c0062 = _pC8 + _g1;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0062);
    _TMP63 = dot(_TMP0.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP67 = dot(_TMP1.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP71 = dot(_TMP2.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP75 = dot(_TMP4.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP79 = dot(_TMP5.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP83 = dot(_TMP6.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP87 = dot(_TMP8.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP91 = dot(_TMP9.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP95 = dot(_TMP10.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP99 = dot(_TMP12.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP103 = dot(_TMP13.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP107 = dot(_TMP14.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP111 = dot(_TMP3.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP115 = dot(_TMP7.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP119 = dot(_TMP11.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP123 = dot(_TMP15.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    if (_TMP91 == _TMP83 && _TMP79 != _TMP95) { 
        _p01 = _TMP9.xyz;
        _p11 = _TMP9.xyz;
    } else {
        if (_TMP79 == _TMP95 && _TMP91 != _TMP83) { 
            _p01 = _TMP5.xyz;
            _p11 = _TMP5.xyz;
        } else {
            if (_TMP79 == _TMP95 && _TMP91 == _TMP83) { 
                _x0128 = 0;
                _y0128 = 0;
                _r0128 = 0;
                if (_TMP83 == _TMP87) { 
                    _x0128 = 1;
                } else {
                    if (_TMP79 == _TMP87) { 
                        _y0128 = 1;
                    } 
                } 
                if (_TMP83 == _TMP103) { 
                    _x0128 = _x0128 + 1;
                } else {
                    if (_TMP79 == _TMP103) { 
                        _y0128 = _y0128 + 1;
                    } 
                } 
                if (_x0128 <= 1) { 
                    _r0128 = 1;
                } 
                if (_y0128 <= 1) { 
                    _r0128 = _r0128 - 1;
                } 
                _x0130 = 0;
                _y0130 = 0;
                _r0130 = 0;
                if (_TMP83 == _TMP75) { 
                    _x0130 = 1;
                } else {
                    if (_TMP79 == _TMP75) { 
                        _y0130 = 1;
                    } 
                } 
                if (_TMP83 == _TMP67) { 
                    _x0130 = _x0130 + 1;
                } else {
                    if (_TMP79 == _TMP67) { 
                        _y0130 = _y0130 + 1;
                    } 
                } 
                if (_x0130 <= 1) { 
                    _r0130 = 1;
                } 
                if (_y0130 <= 1) { 
                    _r0130 = _r0130 - 1;
                } 
                _r1 = _r0128 + _r0130;
                _x0132 = 0;
                _y0132 = 0;
                _r0132 = 0;
                if (_TMP83 == _TMP107) { 
                    _x0132 = 1;
                } else {
                    if (_TMP79 == _TMP107) { 
                        _y0132 = 1;
                    } 
                } 
                if (_TMP83 == _TMP119) { 
                    _x0132 = _x0132 + 1;
                } else {
                    if (_TMP79 == _TMP119) { 
                        _y0132 = _y0132 + 1;
                    } 
                } 
                if (_x0132 <= 1) { 
                    _r0132 = 1;
                } 
                if (_y0132 <= 1) { 
                    _r0132 = _r0132 - 1;
                } 
                _r1 = _r1 + _r0132;
                _x0134 = 0;
                _y0134 = 0;
                _r0134 = 0;
                if (_TMP83 == _TMP71) { 
                    _x0134 = 1;
                } else {
                    if (_TMP79 == _TMP71) { 
                        _y0134 = 1;
                    } 
                } 
                if (_TMP83 == _TMP115) { 
                    _x0134 = _x0134 + 1;
                } else {
                    if (_TMP79 == _TMP115) { 
                        _y0134 = _y0134 + 1;
                    } 
                } 
                if (_x0134 <= 1) { 
                    _r0134 = 1;
                } 
                if (_y0134 <= 1) { 
                    _r0134 = _r0134 - 1;
                } 
                _r1 = _r1 + _r0134;
                if (_r1 > 0) { 
                    _p01 = _TMP6.xyz;
                    _p11 = _TMP6.xyz;
                } else {
                    if (_r1 < 0) { 
                        _p01 = _TMP5.xyz;
                        _p11 = _TMP5.xyz;
                    } else {
                        _p01 = 5.00000000E-01*(_TMP5.xyz + _TMP6.xyz);
                        _p11 = _p01;
                    } 
                } 
            } else {
                if (_TMP83 == _TMP95 && _TMP95 == _TMP103 && _TMP91 != _TMP107 && _TMP95 != _TMP99) { 
                    _p11 = 2.50000000E-01*(3.00000000E+00*_TMP10.xyz + _TMP9.xyz);
                } else {
                    if (_TMP79 == _TMP91 && _TMP91 == _TMP107 && _TMP103 != _TMP95 && _TMP91 != _TMP123) { 
                        _p11 = 2.50000000E-01*(3.00000000E+00*_TMP9.xyz + _TMP10.xyz);
                    } else {
                        _p11 = 5.00000000E-01*(_TMP9.xyz + _TMP10.xyz);
                    } 
                } 
                if (_TMP83 == _TMP95 && _TMP83 == _TMP67 && _TMP79 != _TMP71 && _TMP83 != _TMP63) { 
                    _p01 = 2.50000000E-01*(3.00000000E+00*_TMP6.xyz + _TMP5.xyz);
                } else {
                    if (_TMP79 == _TMP91 && _TMP79 == _TMP71 && _TMP67 != _TMP83 && _TMP79 != _TMP111) { 
                        _p01 = 2.50000000E-01*(3.00000000E+00*_TMP5.xyz + _TMP6.xyz);
                    } else {
                        _p01 = 5.00000000E-01*(_TMP5.xyz + _TMP6.xyz);
                    } 
                } 
            } 
        } 
    } 
    if (_TMP79 == _TMP95 && _TMP91 != _TMP83 && _TMP75 == _TMP79 && _TMP79 != _TMP107) { 
        _p10 = 5.00000000E-01*(_TMP9.xyz + _TMP5.xyz);
    } else {
        if (_TMP79 == _TMP87 && _TMP83 == _TMP79 && _TMP75 != _TMP91 && _TMP79 != _TMP99) { 
            _p10 = 5.00000000E-01*(_TMP9.xyz + _TMP5.xyz);
        } else {
            _p10 = _TMP9.xyz;
        } 
    } 
    if (_TMP91 == _TMP83 && _TMP79 != _TMP95 && _TMP87 == _TMP91 && _TMP91 != _TMP71) { 
        _p00 = 5.00000000E-01*(_TMP9.xyz + _TMP5.xyz);
    } else {
        if (_TMP75 == _TMP91 && _TMP95 == _TMP91 && _TMP87 != _TMP79 && _TMP91 != _TMP63) { 
            _p00 = 5.00000000E-01*(_TMP9.xyz + _TMP5.xyz);
        } else {
            _p00 = _TMP5.xyz;
        } 
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.y < 5.00000000E-01) { 
            _p10 = _p00;
        } 
    } else {
        if (_fp.y < 5.00000000E-01) { 
            _p10 = _p01;
        } else {
            _p10 = _p11;
        } 
    } 
    _OUT._color1 = vec4(_p10.x, _p10.y, _p10.z, 1.00000000E+00);
    FragColor = _OUT._color1;
    return;
} 
#endif
