varying vec2 vUv;

void main()
{
    float strength = mod(vUv.x * 13.0, 1.0);
    strength = step(0.75, strength);

    vec3 redColor = vec3(1, 0, 0);
    vec3 whiteColor = vec3(1, 1, 1);
    vec3 mixedColor = mix(redColor, whiteColor, strength);

    gl_FragColor = vec4(mixedColor, 1.0);
}