function drawNoise(win,noiseMatrix)
global SCREEN

noiseMatrixSet = Screen('MakeTexture',win,noiseMatrix,[],[],1);

% Disable alpha-blending, so we can just overwrite the framebuffer
% with our new pixels:
Screen('Blendfunction', win, GL_ONE, GL_ZERO);

Screen('DrawDots', win, SCREEN.center, 50, [0.5 0.5 0.5], [], 4);

Screen('Blendfunction', win, GL_DST_ALPHA, GL_ONE);

Screen('DrawTexture', win, noiseMatrixSet, [], [], [], 0);

% Screen('DrawingFinished', win);

end