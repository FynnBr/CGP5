#version 440 core

layout(location = 0) in vec2 vTex;
layout(location = 0) out vec4 fragColor;

uniform sampler2D uTex;
uniform sampler2D uTex2;

void main() {
    fragColor = texture(uTex, vTex);
}
