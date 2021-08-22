-- this gets called starts when the level loads.
function start(song)
	print("Worked in the song (pressure)")
end

-- this gets called every frame
function update(elapsed)

end

-- this gets called every beat
function beatHit(beat)
	if (curBeat >= 160 and curBeat < 224) then
        	setCamZoom(0.95)
        	setHudZoom(1.0)
    	end

end

-- this gets called every step
function stepHit(step)
	if curStep == 383 then
		showOnlyStrums = true
		for i = 0, 1 do
			tweenFadeIn(i, 0, 0.35)
		end
		tweenFadeIn(3, 0, 0.35)
		for i = 4, 7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 360, 0.6, 'setDefault')
		end
		tweenFadeIn(2, 0, 0.35)
	end
	if curStep == 505 then
		showOnlyStrums = false
		for i = 4, 7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(0) + 360, 0.6, 'setDefault')
		end
		for i = 0, 3 do
			tweenFadeOut(i, 1, 0.70)
		end
	end
end

function keyPressed (key)

end