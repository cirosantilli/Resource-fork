--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺

function config(map)
	MapCanSavePos(map, 0) --���õ�ͼ�Ƿ񱣴��ɫλ�ã���ͼ�����꣬���򣩣�������Ӱ��õ�ͼ�����и���
    MapCanPK(map, 1) --���õ�ͼ�Ƿ����PK��������Ӱ��õ�ͼ�����и���
    MapCopyNum(map, 1) --���õ�ͼ�ĸ�����Ŀ����������ø���䣬��ʹ��Ĭ��ֵ1
    MapCanTeam( map, 1 )
    MapType( map , 3 )
    MapCopyStartType( map , 1 )
MapCanStall(map , 0)
end


function get_map_entry_pos_starena34()   --������ڵ�λ�õ����꣨���꣨�ף���

end

function init_entry(map)

end

function after_enter_starena34( role , map_copy )
	
end

function before_leave_starena34( role )
end

function map_copy_first_run_starena34( map_copy )
	
end

function map_copy_run_starena34( map_copy )
	JJC34(map_copy)
end

--ÿ5��ִ��һ�ε�


function map_run_starena34( map )




end

--��ͼ�ر�ʱִ��
function map_copy_close_starena34 ( map_copy )
end
		
--��ͼ�����жϡ�����������������������������������������������������������������������������������

function can_open_entry_starena34( map ) 
end 