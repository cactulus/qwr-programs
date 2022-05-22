#version 330 core

layout(location = 0) in vec4 pos;
layout(location = 1) in vec2 texture_coords;

uniform mat4 proj_mat;
uniform mat4 view_mat;

out vec2 uv_coords;

void main() {
    gl_Position = proj_mat * view_mat * pos; 

    uv_coords = texture_coords;
}
