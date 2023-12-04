function onCreate()
    makeLuaSprite('banban', 'bgs/banban/fondo', 120, -100);
    setScrollFactor('banban', 1, 1);
    addLuaSprite('banban')

    makeLuaSprite('sillas', 'bgs/banban/sillas', 120, -100);
    setScrollFactor('sillas', 1, 1);
    addLuaSprite('sillas')

    makeLuaSprite('sillas2', 'bgs/banban/sillas2', 120, -100);
    setScrollFactor('sillas2', 0.5, 1);
    addLuaSprite('sillas2', true)
end