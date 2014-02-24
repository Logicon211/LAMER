attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_texcoord;
varying vec4 v_color;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_color = in_Colour;
    v_texcoord = in_TextureCoord;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texcoord;
varying vec4 v_color;
uniform float Stripes;
uniform vec4 Filter;
uniform float Phase;

vec4 HologramColor( vec4 colour, float stripes, vec4 filter, float phase )
{
colour.a *= abs( sin( radians( v_texcoord.y * 180.0 * stripes + phase * 180.0 ) ) );
return( colour * filter );
}

vec4 FixedColor( sampler2D texture, vec4 col )
{
vec4 colour = texture2D( texture, v_texcoord.xy );return( colour * col );
}

void main()
{
  gl_FragColor = HologramColor( FixedColor( gm_BaseTexture, v_color ), Stripes, Filter, Phase );
}
