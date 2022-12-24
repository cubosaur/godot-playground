shader_type canvas_item;

uniform float speed : hint_range(0.0, 5.0, 0.1) = 1.0;
uniform float amplitude_X : hint_range(0.0, 50.0, 0.5) = 1.0;
uniform float amplitude_Y : hint_range(0.0, 50.0, 0.5) = 1.0;

void vertex() 
{
	VERTEX.x += cos(speed * TIME + VERTEX.x + VERTEX.y) * amplitude_X;
	VERTEX.y += sin(speed * TIME + VERTEX.x + VERTEX.y) * amplitude_Y;
}