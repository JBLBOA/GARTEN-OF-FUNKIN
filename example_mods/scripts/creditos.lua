nombre = "null"

function onCreate()
    if songName == "funired" then
        nombre = "Ikak"
    elseif songName == 'hulk' then
        nombre = "Wowu"
    elseif songName == 'bite' then
        nombre = "pohsan"
    elseif songName == 'bird' then
        nombre = "Arm4GeDon"
    end
end
function onCreatePost()
    makeLuaSprite('song', 'SongPlace', -900, 270, 575)
    setObjectCamera('song', 'other')
    scaleObject('song', 1.6, 1.6)
    addLuaSprite('song')
    makeLuaText('pene', 'Song by: '..nombre , 0, -900, 293)
    setTextFont('pene', 'vcr')
    setTextSize("pene", 35, 35)
    setObjectCamera('pene', 'other')
    addLuaText('pene')
end
function onSongStart()
    doTweenX('moving', 'song', 0, 0.9, 'circInOut')
    doTweenX('movingName', 'pene', 100, 0.9, 'circInOut')
    runTimer('DICKSMASHED', 2.9, 1)
end
function onTimerCompleted(tag)
    if tag == "DICKSMASHED" then
        doTweenX('moving2', 'song', -900, 0.9, 'circInOut')
        doTweenX('movingName', 'pene', -900, 0.9, 'circInOut')
    end
end
