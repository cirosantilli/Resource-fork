------------------------------------------------------------
--EventEntity.lua Created by knight 2005.5.16.
--
--定义各个地图上的事件实体
print( "loading EventEntity.lua" )
-------------------------------------------------------------

--初始化冬岛的事件实体信息
function InitGarnerEntity()

	--创建冬岛港口实体
	CreateBerthEntity( "入港", 455, 2, 33714, 96511, -10, 34, 329, 951, 0 )
	CreateBerthEntity( "入港", 455, 2, 70214, 72011, -10, 34, 697, 703, 0 )
	CreateBerthEntity( "入港", 455, 2, 104314, 62911, -10, 34, 1040, 605, 0 )
	CreateBerthEntity( "入港", 455, 2, 24614, 118511, -10, 34, 254, 1203, 0 )
	CreateBerthEntity( "入港", 455, 2, 45214, 142211, -10, 34, 715,1140, 0 )



end

InitGarnerEntity()