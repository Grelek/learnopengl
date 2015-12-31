#version 330 core

in vec3 ourColor;
in vec2 TexCoord;

out vec4 color;

uniform sampler2D ourTexture1;
uniform sampler2D ourTexture2;
uniform float mixValue;
uniform vec3 timeColors;

void main() {
	color = mix(texture(ourTexture1, TexCoord) * vec4(timeColors, 1.0f), texture(ourTexture2, vec2(TexCoord.x, 1 - TexCoord.y)), mixValue);
}
