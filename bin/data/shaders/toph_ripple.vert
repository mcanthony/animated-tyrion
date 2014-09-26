#version 330

// input variables, defaults from OpenFrameworks
in vec4 position;
in vec4 color;
in vec2 texcoord;

// MVP matrix
uniform mat4 modelMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelViewProjectionMatrix;

// output variables (to fragment shader)
out vec4 vs_Color; // pass through vertex color
out vec4 vs_WorldPos; // pass through the world position for interpolation

void main(void) {
    // pass the position through modified by the transforms
    gl_Position = modelViewProjectionMatrix * position;

    // output the position to the fragment shader
    vs_WorldPos = position;

    // output color to frag
    vs_Color = color;
}
