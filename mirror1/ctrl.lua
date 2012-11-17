--------------------------------------------------------------------------
--									--
--									--
--				ctrl.lua				--
--									--
--									--
--------------------------------------------------------------------------
print( "Loading mirror1 Ctrl.lua" )

function config(map)
    MapCanSavePos(map, 0)		-- 1 = Allow players to save respaw // 0 = Do not allow players to save respaw
    MapCanPK(map, 1)			-- 1 = Turns on PK Mouse Sword Icon // 0 = Turns off PK Mouse Sword Icon ( Need to press CTRL key )
    MapCopyNum(map, 1)			-- 1 Copy of the map will be generated by GameServer
    MapCopyStartType(map, 1) 		-- ���õ�ͼ������ʼ
    SingleMapCopyPlyNum(map, 300) 	-- 300 Players are allowed to enter the map
    MapCanTeam(map , 1)			-- 1 = Allow players to create party // 0 = Do not allow players to create party
    MapType ( map , 4 )			-- 0 = PvP Off // 1 = PvP Off // 2 = PvP On ( Not allowed to kill Guild and Party Mates ) // 3 = PvP On ( Allowed to kill any player but not Party Mates ) // 4 = PvP On ( Not allowed to kill Guild and Party Mates )        
end


function get_map_entry_pos_mirror1()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)
   
end

function after_enter_mirror1( role , map_copy )

local cha_name=GetChaDefaultName(role)

end

function before_leave_mirror1 ( role )

end

function map_copy_first_run_mirror1( map_copy )



end

function map_copy_run_mirror1( map_copy )



end

--ÿ5��ִ��һ�ε�
function map_run_mirror1( map )


end

--��ͼ�ر�ʱִ��
function map_copy_close_mirror1 ( map_copy )

end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_mirror1( map ) 

end 