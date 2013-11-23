varying vec3 ReflectDir;
varying vec3 RefractDir;

void main (void)
{
	gl_Position    = ftransform();

	vec3 normal    = normalize(gl_NormalMatrix*gl_Normal);
	vec4 pos       = gl_ModelViewMatrix*gl_Vertex;
	vec3 eyeDir    = pos.xyz;

	ReflectDir     = reflect(eyeDir,normal);

	RefractDir     = refract(eyeDir,normal,0.666); //(1.0/1.5) = 0.666
}