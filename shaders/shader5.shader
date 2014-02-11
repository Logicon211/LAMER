//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
  vec2 onePixel = vec2(1.0 / 512.0, 1.0 / 512.0);
  vec2 texCoord = v_vTexcoord;  vec4 colour;
  colour.rgb = vec3(0.5);
  colour -= texture2D(gm_BaseTexture, texCoord - onePixel) * 5.0;
  colour += texture2D(gm_BaseTexture, texCoord + onePixel) * 5.0;
  colour.rgb = vec3((colour.r + colour.g + colour.b) / 3.0);
  gl_FragColor = vec4(colour.rgb, texture2D(gm_BaseTexture,v_vTexcoord).a);
}