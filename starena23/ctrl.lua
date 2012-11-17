--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0)		-- 1 = Allow players to save respaw // 0 = Do not allow players to save respaw
    MapCanPK(map, 1)			-- 1 = Turns on PK Mouse Sword Icon // 0 = Turns off PK Mouse Sword Icon ( Need to press CTRL key )
    MapCopyNum(map, 1)			-- 1 Copy of the map will be generated by GameServer
    SingleMapCopyPlyNum(map, 300)	-- 300 Players are allowed to enter the map
    MapCanTeam(map , 1)			-- 1 = Allow players to create party // 0 = Do not allow players to create party
    MapType ( map , 3 )			-- 0 = PvP Off // 1 = PvP Off // 2 = PvP On ( Not allowed to kill Guild and Party Mates ) // 3 = PvP On ( Allowed to kill any player but not Party Mates ) // 4 = PvP On ( Not allowed to kill Guild and Party Mates )        
end


function get_map_entry_pos_starena23()   --设置入口的位置的坐标（坐标（米））

end

function init_entry(map)

end

function after_enter_starena23( role , map_copy )
	
end

function before_leave_starena23( role )
end

function map_copy_first_run_starena23( map_copy )
	
end

function map_copy_run_starena23( map_copy )
	JJC23(map_copy)
end

--每5秒执行一次的


function map_run_starena23( map )

end

--地图关闭时执行
function map_copy_close_starena23 ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_starena23( map ) 
end 