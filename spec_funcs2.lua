
c = 0
local btns = {}
local timer = 0
function scrollbar()

	end
function loader()
timer = timer - 1
if timer <=0 then
timer =100
end
	end
function circle_btn(x,y,r,visibility)
	local pressed = false
if love.system.getOS() == "Android" then
	local touches = love.touch.getTouches()
	for i,v in pairs(touches)do
		local touchable = true
		function love.touchmoved( id, x, y, dx, dy, pressure )
touchable = false
		end

		local xnxx,xnyy = love.touch.getPosition(v)
			xnxx = xnxx-x
			xnyy = xnyy - y
dist = (xnxx*xnxx + xnyy * xnyy)^0.5
if dist <= r and love.mouse.isDown(1) and touchable then
pressed = true
end
end

else
		local xnxx,xnyy = love.mouse.getPosition()
			xnxx = xnxx-x
			xnyy = xnyy - y
dist = (xnxx*xnxx + xnyy * xnyy)^0.5
if dist <= r and love.mouse.isDown(1) then
pressed = true
end
end
if pressed then
love.graphics.setColor(1,0,0,0.5)
end
if visibility or visibility == nil then
			love.graphics.circle("fill",x,y,r)
		end
			love.graphics.setColor(1,1,1)
			local upm = false
return pressed
end
function btn2(btn_name,x,y,w,h,opt)
	local truth = 0
	dnh = false
	local pressed = false
if love.system.getOS() == "Android"then
	local touches = love.touch.getTouches()
	local xt
	local yt
	for i,v in pairs(touches)do
local mx,my = love.touch.getPosition(v)
if opt~=nil then
if opt.cam ~=nil then
	mx,my = opt.cam:toWorld(mx,my)
end
end
if mx < x+w and mx > x then
xt = true
	end
	if my < y+h and my  > y then
yt = true
	end 
	if xt and yt then
pressed = true
else
	dnh = true
	end
end

else
	if love.mouse.isDown(1) then
	local xt
	local yt
local mx,my = love.mouse.getPosition()
if opt~=nil then
if opt.cam ~=nil then
	mx,my = opt.cam:toWorld(mx,my)
end
end
if mx < x+w and mx > x then
xt = true
	end
	if my < y+h and my  > y then
yt = true
	end 
	if xt and yt then
pressed = true
else
	dnh = true
	end
end
end
love.graphics.rectangle("fill",x,y,w,h)
return pressed,dnh
end
function circle_p(world,x,y,radius,density,type)
circ_b =  love.physics.newBody(world,x,y,type)
circ = love.physics.newCircleShape(radius)
circ_f = love.physics.newFixture(circ_b,circ,density)
return circ_b,circ,circ_f
end
function rect_p(world,x,y,width,height,density,type)
box_b = love.physics.newBody(world,x,y,type)
box = love.physics.newRectangleShape(width,height)
box_f = love.physics.newFixture(box_b,box,density)
return box_b,box,box_f
end
function poly_p(world,x,y,density,type,tbl)
box_b = love.physics.newBody(world,x,y,type)
box = love.physics.newPolygonShape(unpack(tbl))
box_f = love.physics.newFixture(box_b,box,density)
return box_b,box,box_f
end
function key_down(btn)
bl = love.keyboard.isDown(btn)
return bl
	end
function img_new(xxx)
	local x = love.graphics.newImage(xxx)
	return x
end
function draw_sprite(sprite_batch,x,y,width,height,r)
	SpriteBatch = sprite_batch
	 quad = love.graphics.newQuad(0,0,width,height,width,height)
SpriteBatch:add( quad, x, y, r)
love.graphics.draw(spriteBatch,x,y)
end
function draw_img(texture_here,img_w,img_h,x,y,rr,icon)
if icon then
	x = img_w/2 + x
	y = img_h/2 + y
end
	if(rr == nil) then
rr = 0
	end
	 quad = love.graphics.newQuad(0,0,img_w,img_h,img_w,img_h)
	love.graphics.draw(texture_here,quad,x,y,rr,1,1,img_w/2,img_h/2)
	end
function newfile(file_name,ot) 
x = love.filesystem.newFile(file_name,ot)
return x
end
function read(cont,file_name)
x= love.filesystem.read(cont,file_name)
return x
	end
	function writef(file_name,data)
x,y = love.filesystem.write(file_name,data)
return x,y
	end
function printx(txt,x,y,font,opt)
local f = font
if opt == nil then
opt = {align = "left",limit = 200}
end
if opt.align == nil then
opt.align = "left"
	end
if opt.limit == nil then
opt.limit = 200
end
if not (font == nil) then
love.graphics.setFont(f)
end
love.graphics.printf(txt,x,y,opt.limit,opt.align)
love.graphics.setColor(1,1,1)

end
ccb = true
hold = 0
add_delay = 0
function setColor(r,g,b,o)
	if o == nil then
o = 1
	end
love.graphics.setColor(r,g,b,o)
	end
function btn(x,y,width,height,invi)
if(love.mouse.isDown(1) and ml >=x and ml <=x+width and mr >= y and mr <=y + height ) then
	cols = true
else
	cols = false
end

if( ml >=x and ml <=x+width and mr >= y and mr <=y + height ) then
	
	hovers = true
else
	hovers = false
	end
	if invi == nil or invi == false then
love.graphics.rectangle("fill",x,y,width,height)
love.graphics.setColor(1,1,1)
end
return cols,hovers
	end
function rect(x,y,width,height)
love.graphics.rectangle("fill",x,y,width,height,r1,r2)
love.graphics.setColor(1,1,1)
end
