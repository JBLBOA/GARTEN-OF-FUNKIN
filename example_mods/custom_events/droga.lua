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
    local var length = tonumber(0 + value2)
    local table=mysplit(droga,",");
    if name == "credits" then

        runTimer('lyricalTho', length, 1)
        makeLuaSprite('image', -900, 50, 20);
        addLuaSprite('image', true);
        doTweenColor('hello', 'image', 'FF3A3A3A', 0.5, 'quartIn');
        doTweenX('MoveOutOne', 'image', 10, 2, 'circOut')
        wait(2)
        doTweenX('MoveOutOne', 'image', -10, 2, 'circOut')
        --removeLuaText('yappin', true)
        
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'lyricalTho' then
        removeLuaSprite('image', true);
    end
end