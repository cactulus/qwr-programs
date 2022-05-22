#version 330 core

in vec2 uv_coords;

out vec4 color;

uniform sampler2D texture_sampler;

void main(void) {
    color = texture(texture_sampler, uv_coords);
}
