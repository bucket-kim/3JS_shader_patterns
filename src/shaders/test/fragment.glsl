varying vec2 vUv;

void main()
{
    float strengthY = vUv.y;

    gl_FragColor = vec4(strengthY, strengthY, strengthY, 1.0);

    // float strengthX = vUv.x;

    // gl_FragColor = vec4(strengthX, strengthX, strengthX, 1.0);
    
    // gl_FragColor = vec4(vUv, 0.0, 1.0);
    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0);
}