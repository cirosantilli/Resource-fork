--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
    MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
    MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
    MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )

end


function get_map_entry_pos_abandonedcity()   --设置入口的位置的坐标（坐标（米））

	local POS_X=2167
	local POS_Y=2790
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner") --设置入口的位置（地图名）
    SetMapEntryTime(map, "2006/10/18/14/0", "0/0/1", "0/24/0", "0/24/0") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。

end
function can_open_entry_abandonedcity( map ) 
--	local time = GetTickCount () 
	local Now_Time = GetNowTime()
	if Now_Time == 1 or Now_Time == 2 or Now_Time == 3 or Now_Time == 4 or Now_Time == 5 or Now_Time == 6 or Now_Time == 7 or Now_Time == 8 or Now_Time == 9 or Now_Time == 10 or Now_Time == 11 or Now_Time == 12 or Now_Time == 13 or Now_Time == 14 or Now_Time == 15 or Now_Time == 16 or Now_Time == 17 or Now_Time == 18 or Now_Time == 19 or Now_Time == 20 or Now_Time == 21 or Now_Time == 22 or Now_Time == 23 or Now_Time == 24 then

		return 1
	else
		return 0
	end

end 
