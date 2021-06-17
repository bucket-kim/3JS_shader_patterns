varying vec2 vUv;

#define PI 3.1415926535897932384626433832795

float random (vec2 st) 
{
    return fract(sin(dot(st.xy, vec2(12.9898,78.233)))*43758.5453123);
}

vec2 rotate(vec2 uv, float rotation, vec2 mid)
{
    return vec2(
      cos(rotation) * (uv.x - mid.x) + sin(rotation) * (uv.y - mid.y) + mid.x,
      cos(rotation) * (uv.y - mid.y) - sin(rotation) * (uv.x - mid.x) + mid.y
    );
}

void main()
{
    // float strength = mod(vUv.y * 10.0, 1.0);

    // float strengthY = vUv.y;

    // float strengthX = vUv.x;

    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = strength < 0.5 ? 0.0 : 1.0;
    // strength = step(0.5, strength);

    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.8, strength);

    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength += step(0.8, mod(vUv.y * 10.0, 1.0));

    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // float strength = step(0.4, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // float barX = step(0.8, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float barY = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barY *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // float strength = barX + barY;

    // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    // barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));

    // float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
    // barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    // float strength = barX + barY;

    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));

    // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));

    // float square1 = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // float square2 = 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // float strength = square2 * square1;

//    float strength = floor(vUv.x * 10.0)/ 10.0;

//    float strength = floor(vUv.x * 10.0)/ 10.0;
//    strength *= floor(vUv.y * 10.0)/ 10.0;

    // float strength = random(vUv);

    // vec2 gridUV = vec2(floor(vUv.x * 10.0)/ 10.0, floor(vUv.y * 10.0)/ 10.0);
    // float strength = random(gridUV);

    // vec2 gridUV = vec2(floor(vUv.x * 10.0)/ 10.0, floor(vUv.y * 10.0 + vUv.x * 5.0)/ 10.0);
    // float strength = random(gridUV);

    // float strength = length(vUv);

    // float strength = distance(vUv, vec2(0.5));

    // float strength = 1.0 - distance(vUv, vec2(0.5));

    // float strength = 0.015 / distance(vUv, vec2(0.5));

    // vec2 lightUVX = vec2(
    //     vUv.x * 0.1 + 0.45, 
    //     vUv.y * 0.5 + 0.25
    // );
    // float lightX = 0.015 / distance(lightUVX, vec2(0.5));

    // vec2 lightUVY = vec2(
    //     vUv.y * 0.1 + 0.45, 
    //     vUv.x * 0.5 + 0.25
    // );
    // float lightY = 0.015 / distance(lightUVY, vec2(0.5));
    // float strength = lightX * lightY;

   
    // vec2 rotatedUv = rotate(vUv, PI * 0.25, vec2(0.5));
    // vec2 lightUVX = vec2(
    //     rotatedUv.x * 0.1 + 0.45, 
    //     rotatedUv.y * 0.5 + 0.25
    // );
    // float lightX = 0.015 / distance(lightUVX, vec2(0.5));
    // vec2 lightUVY = vec2(
    //     rotatedUv.y * 0.1 + 0.45, 
    //     rotatedUv.x * 0.5 + 0.25
    // );
    // float lightY = 0.015 / distance(lightUVY, vec2(0.5));

    // float strength = lightX * lightY;


    // float strength = step(0.25, distance(vUv, vec2(0.5)));

    // float strength = abs(distance(vUv, vec2(0.5)) - 0.25);

    // float strength = step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));

    // float strength = 1.0 - step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));

    // vec2 waveUV = vec2(
    //     vUv.x, 
    //     vUv.y + sin(vUv.x * 30.0) * 0.1
    // );
    // float strength = 1.0 - step(0.01, abs(distance(waveUV, vec2(0.5)) - 0.25));

    // vec2 waveUV = vec2(
    //     vUv.x + sin(vUv.y * 30.0) * 0.1, 
    //     vUv.y + sin(vUv.x * 30.0) * 0.1
    // );
    // float strength = 1.0 - step(0.01, abs(distance(waveUV, vec2(0.5)) - 0.25));

    vec2 waveUV = vec2(
        vUv.x + sin(vUv.y * 100.0) * 0.1, 
        vUv.y + sin(vUv.x * 100.0) * 0.1
    );
    float strength = 1.0 - step(0.01, abs(distance(waveUV, vec2(0.5)) - 0.25));

    gl_FragColor = vec4(strength, strength, strength, 1.0);


    
    // gl_FragColor = vec4(vUv, 0.0, 1.0);
    // gl_FragColor = vec4(0.5, 0.0, 1.0, 1.0);
}