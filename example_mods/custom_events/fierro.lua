fierro = 100
function onEvent(Name)
    if Name == 'fierro' then
        makeLuaSprite('elpepe', 'el_fierro_golpeador_de_parejas_felices_', -328, 90)
        setObjectCamera('elpepe', 'other')
        addLuaSprite('elpepe', true)
        scaleObject('elpepe', 0.6, 0.6)
        doTweenX('lol', 'elpepe', 328, 0.5, 'circInOut')
        space= true
        runTimer('tilin', 0.4, 1)
    end
end
function onCreate()
    makeLuaText('fierro', 'A.M.O.R:'..fierro , 0, 575, 553)
    setTextSize("fierro", 17, 17)
    setObjectCamera('fierro', 'other')
    addLuaText('fierro')
    space= false
    lol = false
end
function onUpdate() 
    if space == true and keyJustPressed('space') then 

        lol = true
        characterPlayAnim('boyfriend', 'dodge', true); 
        setProperty('boyfriend.specialAnim', true);
        doTweenX('lol2', 'elpepe', 2000, 0.5, 'circInOut')
         removeLuaText('fierro')
         makeLuaText('fierro', 'A.M.O.R:'..fierro , 0, 575, 553)
         setObjectCamera('fierro', 'other')
         setTextSize("fierro", 17, 17)
         addLuaText('fierro')
         space = false 

        end
     end 
     function onTimerCompleted(tag, loops, loopsLeft)
        if tag == 'tilin' and lol == false then
            doTweenX('lol2', 'elpepe', 2000, 0.5, 'circInOut')
            fierro = fierro -1
            removeLuaText('fierro')
            makeLuaText('fierro', 'A.M.O.R:'..fierro , 0, 575, 553)
            setObjectCamera('fierro', 'other')
            setTextSize("fierro", 17, 17)
            addLuaText('fierro')
            if fierro < 0 then 
                setProperty('health',getProperty('health')-9.99)
        
        elseif tag == 'tilin' and lol == true then
        lol = false
        removeLuaText('fierro')
        makeLuaText('fierro', 'A.M.O.R:'..fierro , 0, 575, 553)
        setObjectCamera('fierro', 'other')
        setTextSize("fierro", 17, 17)
        addLuaText('fierro')
        
        end
     end
    end