//Coded by INinja Studio
shader_type canvas_item;
uniform sampler2D Sprite;
uniform sampler2D Noise;
uniform vec2 Resolution;

void fragment(){

	vec2 uv = FRAGCOORD.xy / Resolution.xy;
   
    vec4 dist = texture(Noise, uv+(TIME*0.1f)); //add time to make it move
    vec2 distorter = dist.rr * vec2(0.05f,0.05f);
    vec4 color = texture(Sprite, uv + distorter);
    
	
    COLOR = color.rgba;
    }