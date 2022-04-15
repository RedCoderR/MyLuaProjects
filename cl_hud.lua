-- This is my first hud on lua. Only works on Garry's Mod


print ('HUD loading..')

local x = 25
local y = ScrH() - 120

surface.CreateFont('firstfont', {
   font = 'Default',
   size = 25,
   weght = 100
} )

surface.CreateFont('firstfont2', {
   font = 'Default',
   size = 22,
   weght = 100
} )

surface.CreateFont('firstfont3', {
   font = 'Default',
   size = 40,
   weght = 200
} )


local function Firsthud()
    
    local ply = LocalPlayer()
    local hp = ply:Health() or 0
    local maxhp = ply:GetMaxHealth() or 0
    local arm = ply:Armor() or 0
   
    draw.RoundedBox(10, x, y, 200, 90, Color(0,0,0,255) )
     
    draw.RoundedBox(0, x + 10, y + 10, math.Clamp(hp, 0, 180)*1.8, 30, Color(255, 0, 0, 205) )
    draw.RoundedBox(0, x + 10, y + 50, math.Clamp(arm, 0, 180)*1.8, 30, Color(0, 0, 255, 205) )
    
    draw.RoundedBox(0, x + 10, y + 10, 180, 30, Color(128, 128, 128, 128) )
    draw.RoundedBox(0, x + 10, y + 50, 180, 30, Color(128, 128, 128, 128) )

    draw.SimpleText ('HP: ' .. hp, 'firstfont', x+15, y+10, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
    draw.SimpleText ('ARMOR: ' .. arm, 'firstfont2', x+15, y+53, Color(255, 255, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
end 

hook.Add('HUDPaint', 'firsthud', Firsthud)
