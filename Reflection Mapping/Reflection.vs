varying vec3 ReflectDir;

void main (void)
{
	

	gl_Position    = ftransform();

	vec3 normal    = normalize(gl_NormalMatrix*gl_Normal);
	vec4 pos       = gl_ModelViewMatrix*gl_Vertex;
	vec3 eyeDir    = pos.xyz;
	
	ReflectDir     = reflect(eyeDir,normal);
}