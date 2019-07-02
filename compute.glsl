#version 440 core
#extension GL_ARB_explicit_uniform_location : enable
#extension GL_ARB_separate_shader_objects : enable

// Ignore the following line, it 's not relevant for now

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;

layout(location = 0, rgba8) readonly restrict uniform image2D inImage;
layout(location = 1, rgba8) writeonly restrict uniform image2D outImage;


void main() {
    ivec2 position = ivec2(gl_GlobalInvocationID.xy);
    vec4 texel = imageLoad(inImage, position);
    texel.rgb = vec3((texel.r + texel.g + texel.b)/3);
    imageStore(outImage, position, texel);
}
