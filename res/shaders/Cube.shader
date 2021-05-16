#shader vertex
#version 460 core

layout(location = 0) in vec3 position;
layout(location = 1) in vec3 color;

out vec3 m_color;

uniform mat4 u_MVP;

void main()
{
    m_color = color;
    gl_Position = u_MVP * vec4(position, 1.0);
};

#shader fragment
#version 460 core

layout(location = 0) out vec4 color;

in vec3 m_color;

void main()
{
    color = texture(0, m_color.xy).rgb;
};