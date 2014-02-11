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

    vec4 sum = vec4(0.0);
    vec2 q1 = v_vTexcoord;
    vec4 oricol = texture2D(gm_BaseTexture,vec2(q1.x,q1.y));
    vec3 col;
    
    for(int i=-4;i<4;i++) {
        for (int j=-3;j<3;j++) {
            sum += texture2D(gm_BaseTexture,vec2(j,i)*0.004 + vec2(q1.x,q1.y)) * 0.25;
        }
   }
 
  if (oricol.r < 0.4) {
       gl_FragColor = sum*sum*0.012 + oricol;
   } else {
       if (oricol.r < 0.6) {
          gl_FragColor = sum*sum*0.009 + oricol;
       } else {
          gl_FragColor = sum*sum*0.0075 + oricol;
       }
   }
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColor;
uniform float time;
uniform float spd;
uniform float bendfactor;

void main()
{  
  float height = 1.0 - v_vTexcoord.y;
  float offset = pow(abs(height), 1.0);
  offset *= (sin(time * spd) * bendfactor);
  vec4 normalColor = texture2D(gm_BaseTexture, fract(vec2(v_vTexcoord.x + offset, v_vTexcoord.y))).rgba;
  gl_FragColor = normalColor;
 }
