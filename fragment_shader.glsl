#version 330 core

in vec3 ourColor;
in vec2 TexCoord;

out vec4 color;

uniform sampler2D textureWall;
uniform sampler2D textureFace;
uniform float mixValue;

void main() {
	color = mix(texture(textureWall, TexCoord), texture(textureFace, vec2(TexCoord.x, 1 - TexCoord.y)), mixValue);
}
