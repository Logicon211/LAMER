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

uniform vec2 center;
uniform float time;
uniform vec3 shockParams; // Amplitude, Refraction, Width e.g. 10.0, 0.8, 0.1

uniform vec2 resolution;

void main()
{

  vec2 uv = v_texcoord.xy;
  uv.x *= (resolution.x/resolution.y);
  vec2 texCoord = v_texcoord;
  
  float x = (center.x / resolution.x) * (resolution.x/resolution.y);
  float y = center.y / resolution.y;
  
  float dist = distance(uv, vec2(x,y));
  if ( (dist <= (time + shockParams.z)) && 
       (dist >= (time - shockParams.z)) ) 
  {
  
    float dif = (dist - time); 
    float powDiff = 1.0 - pow(abs(dif*shockParams.x),shockParams.y); 
    float diffTime = dif  * powDiff;
    vec2 diffUV = normalize(uv - center); 
    texCoord = uv + (diffUV * diffTime);
    texCoord.x *= (resolution.y/resolution.x);
  } 
  gl_FragColor = texture2D(gm_BaseTexture, texCoord);
  
}
