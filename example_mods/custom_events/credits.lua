function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s";
    end
    local t={};
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str);
    end
    return t;
end

-- Event notes hooks
function onEvent(name, value1, value2)
    local var string = (value1)
    local var length = tonumber(0 + 9)
    local table=mysplit(value2,",");
    if name == "credits" then

        makeLuaSprite('image', -900, 50, 20);
        addLuaSprite('image', true);
        doTweenColor('hello', 'image', 'FFFFFFFF', 0.5, 'quartIn');
        makeLuaText('yappin', 'Lyrics go here!', -900, 50, 20)
        setTextString('yappin',  '' .. string)
        setTextFont('yappin', 'pixel.ttf')
        setTextColor('yappin', '0xffffff')
        setTextSize('yappin', 40);
        addLuaText('yappin')
        setTextAlignment('yappin', 'center')
        setObjectCamera("yappin", 'hud');
        doTweenX('MoveOutOne', 'yappin', 10, 2, 'circOut')
        runTimer('lyricalTho', length, 1)
        --removeLuaText('yappin', true)
        
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'lyricalTho' then
        doTweenX('MoveOutOne', 'yappin', -500, 2, 'circOut')
        removeLuaSprite('image', true);
    end
end