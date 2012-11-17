--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
	MapCanSavePos(map, 0) --设置地图是否保存角色位置（地图，坐标，方向），此设置影响该地图的所有副本
	MapCanPK(map, 1) --设置地图是否可以PK，此设置影响该地图的所有副本
	MapCanTeam( map, 0 )
	MapType( map , 3 )
	MapCopyNum(map, 1) --设置地图的副本数目，如果不调用该语句，则使用默认值1
	SingleMapCopyPlyNum(map, 300)   --设置一个副本的玩家数
	MapCanTeam(map , 0)
	MapCanStall(map , 0)
end


function get_map_entry_pos_chaosicicle()   --设置入口的位置的坐标（坐标（米））

	local POS_X=76
	local POS_Y=126
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "binglang2") --设置入口的位置（地图名）
    SetMapEntryTime(map, "2006/10/18/14/0", "0/24/0", "0/24/0", "0/24/0") --设置入口的时间，地图对象，首次开启时间（年/月/日/时/分），以后再次开启的间隔（日/时/分，全０表示只有首次开启），每次开启到入口消失的间隔（日/时/分，全０表示永不消失），每次开启到地图关闭的间隔（日/时/分，全０表示永不关闭）。。

end

function after_enter_chaosicicle( role , map_copy )
end

function before_leave_chaosicicle( role )
end

--function map_copy_first_run_chaosicicle( map_copy )
--	lua_SetCopySpecialInter(map_copy , 10000)
--	Notice("10")
--
--end

--function map_copy_run_chaosicicle( map_copy )
----Notice("3")
--local new1 = CreateChaEx(791, 120, 120, 145, 50)
--	SetChaLifeTime(new1, 900000)
--		
--end

--每5分钟秒执行1次
function map_copy_run_special_chaosicicle( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("[Chaos Icicle] still have "..HowManyNoDead.." Survivor(s)")
	Every_5_minute = Every_5_minute+1
	if Every_5_minute == 2 then -- 初级宝箱
		local Monster2 = CreateChaEx(859, 7466, 11771, 145, 60,map_copy)
		local Monster3 = CreateChaEx(859, 6761, 13062, 145, 60,map_copy)
		local Monster4 = CreateChaEx(859, 10820, 24989, 145, 60,map_copy)
		local Monster5 = CreateChaEx(859, 14673, 20803, 145, 60,map_copy)
		local Monster6 = CreateChaEx(859, 12311, 16188, 145, 60,map_copy)
		local Monster7 = CreateChaEx(859, 12015, 13994, 145, 60,map_copy)
		local Monster8 = CreateChaEx(859, 12380, 12324, 145, 60,map_copy)
		local Monster9 = CreateChaEx(859, 14339, 12947, 145, 60,map_copy)
		local Monster10 = CreateChaEx(859, 18442, 12863, 145, 60,map_copy)
		local Monster11 = CreateChaEx(859, 18791, 7534, 145, 60,map_copy)
		local Monster12 = CreateChaEx(859, 14373, 7541, 145, 60,map_copy)
		local Monster13 = CreateChaEx(859, 10186, 6273, 145, 60,map_copy)
		local Monster14 = CreateChaEx(859, 10043, 9649, 145, 60,map_copy)
		local Monster15 = CreateChaEx(859, 17186, 3343, 145, 60,map_copy)
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
		SetChaLifeTime(Monster7,299300)
		SetChaLifeTime(Monster8,299350)
		SetChaLifeTime(Monster9,299400)
		SetChaLifeTime(Monster10,299450)
		SetChaLifeTime(Monster11,299500)
		SetChaLifeTime(Monster12,299550)
		SetChaLifeTime(Monster13,299600)
		SetChaLifeTime(Monster14,299650)
		SetChaLifeTime(Monster15,299700)

	end
	if Every_5_minute == 3 then -- 中级宝箱
		local Monster16 = CreateChaEx(860, 11339, 24276, 145, 60,map_copy)
		local Monster17 = CreateChaEx(860, 13812, 18439, 145, 60,map_copy)
		local Monster18 = CreateChaEx(860, 15189, 6218, 145, 60,map_copy)
		local Monster19 = CreateChaEx(860, 16393, 12239, 145, 60,map_copy)
		local Monster20 = CreateChaEx(860, 14895, 13905, 145, 60,map_copy)
		local Monster21 = CreateChaEx(860, 12824, 12767, 145, 60,map_copy)
		local Monster22 = CreateChaEx(860, 10154, 11890, 145, 60,map_copy)
		SetChaLifeTime(Monster16, 299050)
		SetChaLifeTime(Monster17, 299100)
		SetChaLifeTime(Monster18, 299150)
		SetChaLifeTime(Monster19, 299200)
		SetChaLifeTime(Monster20, 299250)
		SetChaLifeTime(Monster21, 299300)
		SetChaLifeTime(Monster22, 299350)

	end
	if Every_5_minute == 4 then -- 高级宝箱
		local Monster23 = CreateChaEx(861, 12167, 25665, 145, 60,map_copy)
		local Monster24 = CreateChaEx(861, 13564, 23189, 145, 60,map_copy)
		local Monster25 = CreateChaEx(861, 18274, 13329, 145, 60,map_copy)
		local Monster26 = CreateChaEx(861, 19167, 9778, 145, 60,map_copy)
		local Monster27 = CreateChaEx(861, 14915, 14352, 145, 60,map_copy)
		local Monster28 = CreateChaEx(861, 13881, 9818, 145, 60,map_copy)
		local Monster29 = CreateChaEx(861, 10854, 11740, 145, 60,map_copy)
		SetChaLifeTime(Monster23, 299050)
		SetChaLifeTime(Monster24, 299100)
		SetChaLifeTime(Monster25, 299150)
		SetChaLifeTime(Monster26, 299200)
		SetChaLifeTime(Monster27, 299250)
		SetChaLifeTime(Monster28, 299300)
		SetChaLifeTime(Monster29, 299350)

	end
	if Every_5_minute == 5 then --新手
		local Monster30 = CreateChaEx(875, 10785, 24073, 145, 60,map_copy)
		local Monster31 = CreateChaEx(872, 13477, 22976, 145, 60,map_copy)
		local Monster32 = CreateChaEx(868, 14639, 15668, 145, 60,map_copy)
		local Monster33 = CreateChaEx(872, 13318, 16448, 145, 60,map_copy)
		local Monster34 = CreateChaEx(879, 12347, 15640, 145, 60,map_copy)
		local Monster35 = CreateChaEx(872, 13948, 13970, 145, 60,map_copy)
		local Monster36 = CreateChaEx(875, 15914, 12813, 145, 60,map_copy)
		local Monster37 = CreateChaEx(868, 18943, 10871, 145, 60,map_copy)
		local Monster38 = CreateChaEx(868, 18963, 8391, 145, 60,map_copy)
		local Monster39 = CreateChaEx(868, 16101, 6381, 145, 60,map_copy)
		local Monster40 = CreateChaEx(879, 15389, 6087, 145, 60,map_copy)
		local Monster41 = CreateChaEx(879, 15126, 6725, 145, 60,map_copy)
		local Monster42 = CreateChaEx(875, 14694, 7473, 145, 60,map_copy)
		local Monster43 = CreateChaEx(875, 14046, 10079, 145, 60,map_copy)
		local Monster44 = CreateChaEx(872, 13561, 9940, 145, 60,map_copy)
		local Monster45 = CreateChaEx(879, 12202, 10924, 145, 60,map_copy)
		local Monster46 = CreateChaEx(875, 11824, 10620, 145, 60,map_copy)
		local Monster47 = CreateChaEx(875, 11026, 11515, 145, 60,map_copy)
		local Monster48 = CreateChaEx(868, 9987, 11359, 145, 60,map_copy)
		local Monster49 = CreateChaEx(868, 10050, 10309, 145, 60,map_copy)
		local Monster50 = CreateChaEx(868, 10009, 8176, 145, 60,map_copy)
		local Monster51 = CreateChaEx(868, 12256, 6305, 145, 60,map_copy)
		SetChaLifeTime(Monster30,298050)
		SetChaLifeTime(Monster31,298100)
		SetChaLifeTime(Monster32,298150)
		SetChaLifeTime(Monster33,298200)
		SetChaLifeTime(Monster34,298250)
		SetChaLifeTime(Monster35,298300)
		SetChaLifeTime(Monster36,298350)
		SetChaLifeTime(Monster37,298400)
		SetChaLifeTime(Monster38,298450)
		SetChaLifeTime(Monster39,298500)
		SetChaLifeTime(Monster40,298550)
		SetChaLifeTime(Monster41,298600)
		SetChaLifeTime(Monster42,298650)
		SetChaLifeTime(Monster43,298700)
		SetChaLifeTime(Monster44,298750)
		SetChaLifeTime(Monster45,298800)
		SetChaLifeTime(Monster46,2910780)
		SetChaLifeTime(Monster47,298900)
		SetChaLifeTime(Monster48,298950)
		SetChaLifeTime(Monster49,299000)
		SetChaLifeTime(Monster50,299050)
		SetChaLifeTime(Monster51,299100)

	end
	if Every_5_minute == 6 then -- 一转角色
		local Monster52 = CreateChaEx(869, 6383, 3326, 130, 60,map_copy)
		local Monster53 = CreateChaEx(880, 6760, 5283, 310, 60,map_copy)
		local Monster54 = CreateChaEx(876, 5985, 6834, 85, 60,map_copy)
		local Monster55 = CreateChaEx(876, 7022, 8707, 70, 60,map_copy)
		local Monster56 = CreateChaEx(869, 7976, 9655, 280, 60,map_copy)
		local Monster57 = CreateChaEx(869, 6933, 12327, 280, 60,map_copy)
		local Monster58 = CreateChaEx(880, 6095, 15473, 55, 60,map_copy)
		local Monster59 = CreateChaEx(880, 8774, 13019, 145, 60,map_copy)
		local Monster60 = CreateChaEx(876, 9894, 12745, 175, 60,map_copy)
		local Monster61 = CreateChaEx(869, 10279, 13445, 310, 60,map_copy)
		local Monster62 = CreateChaEx(869, 13154, 21932, 145, 60,map_copy)
		local Monster63 = CreateChaEx(873, 13979, 24290, 280, 60,map_copy)
		local Monster64 = CreateChaEx(869, 12066, 25739, 10, 60,map_copy)
		local Monster65 = CreateChaEx(880, 10475, 24473, 115, 60,map_copy)
		local Monster66 = CreateChaEx(876, 11915, 22670, 145, 60,map_copy)
		local Monster67 = CreateChaEx(873, 13946, 22903, 265, 60,map_copy)
		local Monster68 = CreateChaEx(880, 13144, 20195, 100, 60,map_copy)
		local Monster69 = CreateChaEx(873, 13908, 18644, 235, 60,map_copy)
		local Monster70 = CreateChaEx(869, 13055, 18537, 85, 60,map_copy)
		local Monster71 = CreateChaEx(873, 14496, 16124, 280, 60,map_copy)
		local Monster72 = CreateChaEx(880, 14689, 15746, 340, 60,map_copy)
		local Monster73 = CreateChaEx(869, 11936, 16302, 70, 60,map_copy)
		local Monster74 = CreateChaEx(873, 13456, 13442, 340, 60,map_copy)
		local Monster75 = CreateChaEx(869, 16310, 12095, 220, 60,map_copy)
		local Monster76 = CreateChaEx(873, 18525, 13386, 325, 60,map_copy)
		local Monster77 = CreateChaEx(880, 18688, 11302, 175, 60,map_copy)
		local Monster78 = CreateChaEx(876, 19509, 10124, 160, 60,map_copy)
		local Monster79 = CreateChaEx(873, 19458, 9739, 205, 60,map_copy)
		local Monster80 = CreateChaEx(869, 18724, 7861, 175, 60,map_copy)
		local Monster81 = CreateChaEx(876, 17617, 5696, 175, 60,map_copy)
		local Monster82 = CreateChaEx(873, 17042, 6149, 145, 60,map_copy)
		local Monster83 = CreateChaEx(869, 16166, 6177, 190, 60,map_copy)
		local Monster84 = CreateChaEx(879, 19034, 3793, 145, 60,map_copy)
		local Monster85 = CreateChaEx(876, 16762, 3079, 145, 60,map_copy)
		local Monster86 = CreateChaEx(880, 15763, 3315, 145, 60,map_copy)
		local Monster87 = CreateChaEx(873, 15786, 3892, 145, 60,map_copy)
		local Monster88 = CreateChaEx(869, 14734, 4920, 145, 60,map_copy)
		local Monster89 = CreateChaEx(873, 12945, 6454, 145, 60,map_copy)
		local Monster90 = CreateChaEx(880, 12909, 6129, 145, 60,map_copy)
		local Monster91 = CreateChaEx(876, 11697, 6337, 145, 60,map_copy)
		local Monster92 = CreateChaEx(873, 11130, 6266, 145, 60,map_copy)
		local Monster93 = CreateChaEx(876, 10087, 6876, 145, 60,map_copy)
			SetChaLifeTime(Monster52,297050)
			SetChaLifeTime(Monster53,297100)
			SetChaLifeTime(Monster54,297150)
			SetChaLifeTime(Monster55,297200)
			SetChaLifeTime(Monster56,297250)
			SetChaLifeTime(Monster57,297300)
			SetChaLifeTime(Monster58,297350)
			SetChaLifeTime(Monster59,297400)
			SetChaLifeTime(Monster60,297450)
			SetChaLifeTime(Monster61,297500)
			SetChaLifeTime(Monster62,297550)
			SetChaLifeTime(Monster63,297600)
			SetChaLifeTime(Monster64,297650)
			SetChaLifeTime(Monster65,297700)
			SetChaLifeTime(Monster66,297750)
			SetChaLifeTime(Monster67,297800)
			SetChaLifeTime(Monster68,297850)
			SetChaLifeTime(Monster69,297900)
			SetChaLifeTime(Monster70,297950)
			SetChaLifeTime(Monster71,298000)
			SetChaLifeTime(Monster72,298050)
			SetChaLifeTime(Monster73,298100)
			SetChaLifeTime(Monster74,298150)
			SetChaLifeTime(Monster75,298200)
			SetChaLifeTime(Monster76,298250)
			SetChaLifeTime(Monster77,298300)
			SetChaLifeTime(Monster78,298350)
			SetChaLifeTime(Monster79,298400)
			SetChaLifeTime(Monster80,298450)
			SetChaLifeTime(Monster81,298500)
			SetChaLifeTime(Monster82,298550)
			SetChaLifeTime(Monster83,298600)
			SetChaLifeTime(Monster84,298650)
			SetChaLifeTime(Monster85,298700)
			SetChaLifeTime(Monster86,298750)
			SetChaLifeTime(Monster87,298800)
			SetChaLifeTime(Monster88,2910780)
			SetChaLifeTime(Monster89,298900)
			SetChaLifeTime(Monster90,298950)
			SetChaLifeTime(Monster91,299000)
			SetChaLifeTime(Monster92,299050)
			SetChaLifeTime(Monster93,299100)

	end
	if Every_5_minute == 7 then -- 二转角色
		local Monster94 = CreateChaEx(870, 8103, 15758, 145, 60,map_copy)
		local Monster95 = CreateChaEx(871, 6366, 16072, 145, 60,map_copy)
		local Monster96 = CreateChaEx(877, 6158, 14021, 145, 60,map_copy)
		local Monster97 = CreateChaEx(878, 6462, 13205, 145, 60,map_copy)
		local Monster98 = CreateChaEx(874, 18456, 3689, 145, 60,map_copy)
		local Monster99 = CreateChaEx(881, 17992, 3613, 145, 60,map_copy)
		local Monster100 = CreateChaEx(871, 15235, 3295, 145, 60,map_copy)
		local Monster101 = CreateChaEx(874, 11944, 3601, 145, 60,map_copy)
		local Monster102 = CreateChaEx(870, 12378, 3349, 145, 60,map_copy)
		local Monster103 = CreateChaEx(871, 11528, 2721, 145, 60,map_copy)
		local Monster104 = CreateChaEx(881, 9531, 2727, 145, 60,map_copy)
		local Monster105 = CreateChaEx(874, 8534, 3308, 145, 60,map_copy)
		local Monster106 = CreateChaEx(877, 7543, 3164, 145, 60,map_copy)
		local Monster107 = CreateChaEx(878, 6487, 3343, 145, 60,map_copy)
		local Monster108 = CreateChaEx(871, 7192, 4128, 145, 60,map_copy)
		local Monster109 = CreateChaEx(870, 6677, 4895, 145, 60,map_copy)
		local Monster110 = CreateChaEx(877, 6567, 5679, 145, 60,map_copy)
		local Monster111 = CreateChaEx(881, 6701, 6500, 145, 60,map_copy)
		local Monster112 = CreateChaEx(881, 6369, 6949, 145, 60,map_copy)
		local Monster113 = CreateChaEx(877, 6994, 8064, 145, 60,map_copy)
		local Monster114 = CreateChaEx(878, 6505, 8494, 145, 60,map_copy)
		local Monster115 = CreateChaEx(874, 6536, 8923, 145, 60,map_copy)
		local Monster116 = CreateChaEx(870, 6288, 10738, 145, 60,map_copy)
		local Monster117 = CreateChaEx(871, 5901, 12142, 145, 60,map_copy)
		local Monster118 = CreateChaEx(881, 13579, 25098, 145, 60,map_copy)
		local Monster119 = CreateChaEx(878, 12103, 25146, 145, 60,map_copy)
		local Monster120 = CreateChaEx(871, 12122, 24854, 145, 60,map_copy)
		local Monster121 = CreateChaEx(870, 11116, 24702, 145, 60,map_copy)
		local Monster122 = CreateChaEx(871, 10579, 24343, 145, 60,map_copy)
		local Monster123 = CreateChaEx(881, 10968, 23507, 145, 60,map_copy)
		local Monster124 = CreateChaEx(874, 13141, 22546, 145, 60,map_copy)
		local Monster125 = CreateChaEx(877, 13778, 22539, 145, 60,map_copy)
		local Monster126 = CreateChaEx(878, 13259, 21845, 145, 60,map_copy)
		local Monster127 = CreateChaEx(874, 14899, 20929, 145, 60,map_copy)
		local Monster128 = CreateChaEx(881, 14973, 20419, 145, 60,map_copy)
		local Monster129 = CreateChaEx(870, 13247, 19932, 145, 60,map_copy)
		local Monster130 = CreateChaEx(871, 13892, 19399, 145, 60,map_copy)
		local Monster131 = CreateChaEx(881, 13283, 17519, 145, 60,map_copy)
		local Monster132 = CreateChaEx(874, 18412, 20105, 145, 60,map_copy)
		local Monster133 = CreateChaEx(871, 22194, 18012, 145, 60,map_copy)
		local Monster134 = CreateChaEx(870, 21710, 17182, 145, 60,map_copy)
		local Monster135 = CreateChaEx(874, 20408, 17788, 145, 60,map_copy)
		local Monster136 = CreateChaEx(878, 20461, 17339, 145, 60,map_copy)
		local Monster137 = CreateChaEx(881, 19457, 17817, 145, 60,map_copy)
		local Monster138 = CreateChaEx(881, 16343, 15573, 145, 60,map_copy)
		local Monster139 = CreateChaEx(870, 14078, 15726, 145, 60,map_copy)
		local Monster140 = CreateChaEx(871, 12363, 15855, 145, 60,map_copy)
		local Monster141 = CreateChaEx(871, 11589, 13429, 145, 60,map_copy)
		local Monster142 = CreateChaEx(874, 11113, 13869, 145, 60,map_copy)
		local Monster143 = CreateChaEx(881, 10902, 14335, 145, 60,map_copy)
		local Monster144 = CreateChaEx(878, 9309, 12935, 145, 60,map_copy)
		local Monster145 = CreateChaEx(881, 12534, 11209, 145, 60,map_copy)
		local Monster146 = CreateChaEx(874, 12515, 13202, 145, 60,map_copy)
		local Monster147 = CreateChaEx(878, 14479, 14079, 145, 60,map_copy)
		local Monster148 = CreateChaEx(874, 16426, 11297, 145, 60,map_copy)
		local Monster149 = CreateChaEx(877, 16757, 12339, 145, 60,map_copy)
		local Monster150 = CreateChaEx(878, 17115, 12436, 145, 60,map_copy)
		local Monster151 = CreateChaEx(881, 18473, 12565, 145, 60,map_copy)
		local Monster152 = CreateChaEx(881, 20540, 11384, 145, 60,map_copy)
		local Monster153 = CreateChaEx(878, 20235, 10866, 145, 60,map_copy)
		local Monster154 = CreateChaEx(874, 20390, 9764, 145, 60,map_copy)
		local Monster155 = CreateChaEx(871, 19487, 9642, 145, 60,map_copy)
		local Monster156 = CreateChaEx(881, 19063, 7981, 145, 60,map_copy)
		local Monster157 = CreateChaEx(874, 110766, 7827, 145, 60,map_copy)
		local Monster158 = CreateChaEx(878, 19026, 6331, 145, 60,map_copy)
		local Monster159 = CreateChaEx(871, 18459, 5518, 145, 60,map_copy)
		local Monster160 = CreateChaEx(870, 17781, 6160, 145, 60,map_copy)
		local Monster161 = CreateChaEx(871, 15146, 5255, 145, 60,map_copy)
		local Monster162 = CreateChaEx(878, 15722, 6195, 145, 60,map_copy)
		local Monster163 = CreateChaEx(881, 15088, 6729, 145, 60,map_copy)
		local Monster164 = CreateChaEx(874, 15116, 7447, 145, 60,map_copy)
		local Monster165 = CreateChaEx(878, 12657, 8012, 145, 60,map_copy)
		local Monster166 = CreateChaEx(874, 11770, 6209, 145, 60,map_copy)
		local Monster167 = CreateChaEx(870, 10394, 6937, 145, 60,map_copy)
			SetChaLifeTime(Monster94,296050)
			SetChaLifeTime(Monster95,296100)
			SetChaLifeTime(Monster96,296150)
			SetChaLifeTime(Monster97,296200)
			SetChaLifeTime(Monster98,296250)
			SetChaLifeTime(Monster99,296300)
			SetChaLifeTime(Monster100,296350)
			SetChaLifeTime(Monster101,296400)
			SetChaLifeTime(Monster102,296450)
			SetChaLifeTime(Monster103,296500)
			SetChaLifeTime(Monster104,296550)
			SetChaLifeTime(Monster105,296600)
			SetChaLifeTime(Monster106,296650)
			SetChaLifeTime(Monster107,296700)
			SetChaLifeTime(Monster108,296750)
			SetChaLifeTime(Monster109,296800)
			SetChaLifeTime(Monster110,296850)
			SetChaLifeTime(Monster111,296900)
			SetChaLifeTime(Monster112,296950)
			SetChaLifeTime(Monster113,297000)
			SetChaLifeTime(Monster114,297050)
			SetChaLifeTime(Monster115,297100)
			SetChaLifeTime(Monster116,297150)
			SetChaLifeTime(Monster117,297200)
			SetChaLifeTime(Monster118,297250)
			SetChaLifeTime(Monster119,297300)
			SetChaLifeTime(Monster120,297350)
			SetChaLifeTime(Monster121,297400)
			SetChaLifeTime(Monster122,297450)
			SetChaLifeTime(Monster123,297500)
			SetChaLifeTime(Monster124,297550)
			SetChaLifeTime(Monster125,297600)
			SetChaLifeTime(Monster126,297650)
			SetChaLifeTime(Monster127,297700)
			SetChaLifeTime(Monster128,297750)
			SetChaLifeTime(Monster129,297800)
			SetChaLifeTime(Monster130,297850)
			SetChaLifeTime(Monster131,297900)
			SetChaLifeTime(Monster132,297950)
			SetChaLifeTime(Monster133,298000)
			SetChaLifeTime(Monster134,298050)
			SetChaLifeTime(Monster135,298100)
			SetChaLifeTime(Monster136,298150)
			SetChaLifeTime(Monster137,298200)
			SetChaLifeTime(Monster138,298250)
			SetChaLifeTime(Monster139,298300)
			SetChaLifeTime(Monster140,298350)
			SetChaLifeTime(Monster141,298400)
			SetChaLifeTime(Monster142,298450)
			SetChaLifeTime(Monster143,298500)
			SetChaLifeTime(Monster144,298550)
			SetChaLifeTime(Monster145,298600)
			SetChaLifeTime(Monster146,298650)
			SetChaLifeTime(Monster147,298700)
			SetChaLifeTime(Monster148,298750)
			SetChaLifeTime(Monster149,298800)
			SetChaLifeTime(Monster150,2910780)
			SetChaLifeTime(Monster151,298900)
			SetChaLifeTime(Monster152,298950)
			SetChaLifeTime(Monster153,299000)
			SetChaLifeTime(Monster154,299050)
			SetChaLifeTime(Monster155,299100)
			SetChaLifeTime(Monster156,299150)
			SetChaLifeTime(Monster157,299200)
			SetChaLifeTime(Monster158,299250)
			SetChaLifeTime(Monster159,299300)
			SetChaLifeTime(Monster160,299350)
			SetChaLifeTime(Monster161,299400)
			SetChaLifeTime(Monster162,299450)
			SetChaLifeTime(Monster163,299500)
			SetChaLifeTime(Monster164,299550)
			SetChaLifeTime(Monster165,299600)
			SetChaLifeTime(Monster166,299650)
			SetChaLifeTime(Monster167,299700)

	end
	if Every_5_minute == 8 then -- 黑龙角色
		local Monster168 =CreateChaEx(1079, 68, 71, 145, 60,map_copy)
		local Monster169 =CreateChaEx(1078, 71, 68, 145, 60,map_copy)
		local Monster170 =CreateChaEx(1079, 9115, 8042, 145, 60,map_copy)
		local Monster171 =CreateChaEx(1078, 11436, 7740, 145, 60,map_copy)
		local Monster172 =CreateChaEx(1076, 8201, 8590, 145, 60,map_copy)
		local Monster173 =CreateChaEx(1078, 9210, 22071, 145, 60,map_copy)
		local Monster174 =CreateChaEx(1078, 16967, 22831, 100, 60,map_copy)
		local Monster175 =CreateChaEx(1079, 18003, 21061, 235, 60,map_copy)
		local Monster176 =CreateChaEx(1078, 18305, 15589, 10, 60,map_copy)
		local Monster177 =CreateChaEx(1078, 7791, 14993, 70, 60,map_copy)
		local Monster178 =CreateChaEx(1076, 13397, 10783, 340, 60,map_copy)
		local Monster179 =CreateChaEx(1076, 6849, 6819, 145, 60,map_copy)
		local Monster180 =CreateChaEx(1079, 7144, 9232, 145, 60,map_copy)
		local Monster181 =CreateChaEx(1078, 284, 509, 145, 60,map_copy)
		local Monster182 =CreateChaEx(1079, 7939, 7260, 145, 60,map_copy)
		local Monster183 =CreateChaEx(1078, 8185, 11194, 355, 60,map_copy)
		local Monster184 =CreateChaEx(1076, 6618, 12245, 340, 60,map_copy)
		local Monster185 =CreateChaEx(1077, 8065, 13506, 325, 60,map_copy)
		local Monster186 =CreateChaEx(1076, 9233, 14876, 220, 60,map_copy)
		local Monster187 =CreateChaEx(1079, 6729, 15659, 235, 60,map_copy)
		local Monster188 =CreateChaEx(1078, 6943, 17451, 160, 60,map_copy)
		local Monster189 =CreateChaEx(1076, 8245, 16703, 145, 60,map_copy)
		local Monster190 =CreateChaEx(1078, 9236, 18695, 115, 60,map_copy)
		local Monster191 =CreateChaEx(1078, 7125, 19397, 220, 60,map_copy)
		local Monster192 =CreateChaEx(1077, 7029, 20366, 250, 60,map_copy)
		local Monster193 =CreateChaEx(1076, 8300, 21581, 145, 60,map_copy)
		local Monster194 =CreateChaEx(1079, 7104, 23177, 235, 60,map_copy)
		local Monster195 =CreateChaEx(1078, 11047, 22508, 145, 60,map_copy)
		local Monster196 =CreateChaEx(1079, 12120, 19945, 145, 60,map_copy)
		local Monster197 =CreateChaEx(1078, 13395, 21325, 145, 60,map_copy)
		local Monster198 =CreateChaEx(1076, 13305, 23636, 220, 60,map_copy)
		local Monster199 =CreateChaEx(1078, 14870, 21363, 235, 60,map_copy)
		local Monster200 =CreateChaEx(1079, 15006, 18640, 145, 60,map_copy)
		local Monster201 =CreateChaEx(1078, 16444, 11553, 145, 60,map_copy)
		local Monster202 =CreateChaEx(1079, 15395, 8470, 145, 60,map_copy)
		local Monster203 =CreateChaEx(1078, 14905, 9146, 145, 60,map_copy)
		local Monster204 =CreateChaEx(1078, 15951, 9078, 355, 60,map_copy)
		local Monster205 =CreateChaEx(1077, 15381, 10021, 145, 60,map_copy)
		local Monster206 =CreateChaEx(1076, 10314, 13037, 145, 60,map_copy)
		local Monster207 =CreateChaEx(1076, 11545, 15958, 145, 60,map_copy)
		local Monster208 =CreateChaEx(1079, 11793, 18653, 145, 60,map_copy)
		local Monster209 =CreateChaEx(1079, 13211, 18723, 145, 60,map_copy)
		local Monster210 =CreateChaEx(1079, 14214, 16453, 145, 60,map_copy)
		local Monster211 =CreateChaEx(1079, 16598, 14245, 145, 60,map_copy)
		local Monster212 =CreateChaEx(1077, 17224, 19508, 145, 60,map_copy)
		local Monster213 =CreateChaEx(1076, 16758, 15260, 175, 60,map_copy)
		local Monster214 =CreateChaEx(1078, 9859, 10410, 25, 60,map_copy)
		local Monster215 =CreateChaEx(1079, 11896, 10259, 85, 60,map_copy)
		local Monster216 =CreateChaEx(1076, 11154, 11604, 340, 60,map_copy)
		local Monster217 =CreateChaEx(1078, 23667, 18360, 295, 60,map_copy)
		local Monster218 =CreateChaEx(1079, 13178, 11824, 265, 60,map_copy)
		local Monster219 =CreateChaEx(1077, 15014, 13276, 145, 60,map_copy)
		local Monster220 =CreateChaEx(1078, 13742, 15229, 145, 60,map_copy)
		local Monster221 =CreateChaEx(1076, 9964, 17242, 145, 60,map_copy)
		local Monster222 =CreateChaEx(1078, 12829, 13520, 205, 60,map_copy)
		local Monster223 =CreateChaEx(1079, 17099, 7274, 220, 60,map_copy)
		local Monster224 =CreateChaEx(1077, 17058, 10237, 130, 60,map_copy)
		local Monster225 =CreateChaEx(1078, 17010, 16794, 265, 60,map_copy)
		local Monster226 =CreateChaEx(1076, 16582, 18119, 235, 60,map_copy)
		local Monster227 =CreateChaEx(1078, 16312, 21211, 145, 60,map_copy)
		local Monster228 =CreateChaEx(1079, 14695, 19808, 265, 60,map_copy)
		local Monster229 =CreateChaEx(1078, 18912, 16135, 175, 60,map_copy)
		local Monster230 =CreateChaEx(1077, 19736, 16999, 145, 60,map_copy)
		local Monster231 =CreateChaEx(1076, 19740, 16700, 145, 60,map_copy)
		local Monster232 =CreateChaEx(1078, 18961, 18673, 145, 60,map_copy)
		local Monster233 =CreateChaEx(1077, 18904, 20313, 145, 60,map_copy)
		local Monster234 =CreateChaEx(1076, 21648, 20459, 145, 60,map_copy)
		local Monster235 =CreateChaEx(1078, 22210, 18066, 145, 60,map_copy)
		local Monster236 =CreateChaEx(1079, 22301, 15984, 145, 60,map_copy)
		local Monster237 =CreateChaEx(1078, 20626, 18515, 235, 60,map_copy)
		local Monster238 =CreateChaEx(1077, 20946, 14221, 145, 60,map_copy)
		local Monster239 =CreateChaEx(1076, 23063, 14130, 145, 60,map_copy)
		local Monster240 =CreateChaEx(1079, 23735, 20345, 145, 60,map_copy)
		local Monster241 =CreateChaEx(1079, 23513, 23014, 145, 60,map_copy)
		local Monster242 =CreateChaEx(1078, 21261, 23534, 145, 60,map_copy)
		local Monster243 =CreateChaEx(1076, 19474, 23208, 145, 60,map_copy)
		local Monster244 =CreateChaEx(1079, 19546, 22211, 145, 60,map_copy)
		local Monster245 =CreateChaEx(1078, 21497, 21932, 145, 60,map_copy)
		local Monster246 =CreateChaEx(1077, 6555, 14269, 145, 60,map_copy)
		local Monster247 =CreateChaEx(1079, 8749, 20367, 145, 60,map_copy)
		local Monster248 =CreateChaEx(1078, 9387, 23221, 145, 60,map_copy)
		local Monster249 =CreateChaEx(1079, 10137, 6583, 145, 60,map_copy)
		local Monster250 =CreateChaEx(1079, 10727, 8329, 145, 60,map_copy)
		local Monster251 =CreateChaEx(1078, 12521, 6892, 145, 60,map_copy)
		local Monster252 =CreateChaEx(1076, 12633, 8090, 145, 60,map_copy)
		local Monster253 =CreateChaEx(1079, 18306, 7007, 145, 60,map_copy)
		local Monster254 =CreateChaEx(1078, 17919, 8062, 145, 60,map_copy)
		local Monster255 =CreateChaEx(1077, 18241, 9280, 145, 60,map_copy)
		local Monster256 =CreateChaEx(1076, 18195, 11142, 145, 60,map_copy)
		local Monster257 =CreateChaEx(1079, 18478, 13058, 145, 60,map_copy)
		local Monster258 =CreateChaEx(1077, 15415, 7607, 145, 60,map_copy)
		local Monster259 =CreateChaEx(1076, 14380, 8470, 145, 60,map_copy)
		local Monster260 =CreateChaEx(1078, 14279, 10057, 145, 60,map_copy)
		local Monster261 =CreateChaEx(1076, 14500, 11200, 145, 60,map_copy)
		local Monster262 =CreateChaEx(1079, 15774, 12103, 145, 60,map_copy)
		local Monster263 =CreateChaEx(1076, 15897, 9088, 145, 60,map_copy)
		local Monster264 =CreateChaEx(1079, 15927, 9926, 145, 60,map_copy)
		local Monster265 =CreateChaEx(1078, 15870, 11318, 145, 60,map_copy)
		local Monster266 =CreateChaEx(1077, 16705, 11009, 145, 60,map_copy)
		local Monster267 =CreateChaEx(1079, 16991, 10282, 145, 60,map_copy)
		local Monster268 =CreateChaEx(1078, 16776, 9390, 100, 60,map_copy)
		local Monster269 =CreateChaEx(1077, 16228, 8008, 145, 60,map_copy)
		local Monster270 =CreateChaEx(1078, 17340, 5441, 145, 60,map_copy)
		local Monster271 =CreateChaEx(1079, 16977, 6826, 250, 60,map_copy)
		local Monster272 =CreateChaEx(1078, 17895, 7596, 145, 60,map_copy)
		local Monster273 =CreateChaEx(1076, 18350, 9107, 145, 60,map_copy)
		local Monster274 =CreateChaEx(1078, 17184, 12038, 145, 60,map_copy)
		local Monster275 =CreateChaEx(1077, 17675, 13625, 280, 60,map_copy)
		local Monster276 =CreateChaEx(1076, 17292, 14462, 355, 60,map_copy)
		local Monster277 =CreateChaEx(1078, 18674, 13972, 250, 60,map_copy)
		local Monster278 =CreateChaEx(1079, 18726, 13152, 235, 60,map_copy)
		local Monster279 =CreateChaEx(1077, 19140, 11976, 235, 60,map_copy)
		local Monster280 =CreateChaEx(1078, 19373, 10749, 205, 60,map_copy)
		local Monster281 =CreateChaEx(1076, 19756, 9173, 250, 60,map_copy)
		local Monster282 =CreateChaEx(1077, 20326, 10478, 250, 60,map_copy)
		local Monster283 =CreateChaEx(1078, 21174, 11534, 280, 60,map_copy)
		local Monster284 =CreateChaEx(1076, 21691, 10492, 220, 60,map_copy)
		local Monster285 =CreateChaEx(1079, 8797, 15531, 145, 60,map_copy)
		local Monster286 =CreateChaEx(1079, 20759, 8953, 235, 60,map_copy)
		local Monster287 =CreateChaEx(1079, 19452, 7657, 220, 60,map_copy)
		local Monster288 =CreateChaEx(1077, 19486, 6799, 220, 60,map_copy)
		local Monster289 =CreateChaEx(1078, 20496, 7737, 145, 60,map_copy)
		local Monster290 =CreateChaEx(1079, 20700, 6806, 145, 60,map_copy)
		local Monster291 =CreateChaEx(1078, 20642, 5653, 220, 60,map_copy)
		local Monster292 =CreateChaEx(1076, 19568, 5521, 220, 60,map_copy)
		local Monster293 =CreateChaEx(1076, 18070, 5694, 145, 60,map_copy)
		local Monster294 =CreateChaEx(1078, 15987, 6943, 145, 60,map_copy)
		local Monster295 =CreateChaEx(1079, 14332, 7074, 145, 60,map_copy)
		local Monster296 =CreateChaEx(1077, 13255, 6892, 145, 60,map_copy)
		local Monster297 =CreateChaEx(1078, 11828, 7155, 145, 60,map_copy)
		local Monster298 =CreateChaEx(1079, 10361, 6896, 175, 60,map_copy)
		local Monster299 =CreateChaEx(1077, 9856, 6512, 145, 60,map_copy)
		local Monster300 =CreateChaEx(1076, 10510, 5556, 145, 60,map_copy)
		local Monster301 =CreateChaEx(1079, 11501, 6188, 145, 60,map_copy)
		local Monster302 =CreateChaEx(1078, 12417, 5925, 175, 60,map_copy)
		local Monster303 =CreateChaEx(1079, 14962, 6289, 145, 60,map_copy)
		local Monster304 =CreateChaEx(1077, 14056, 6124, 145, 60,map_copy)
		local Monster305 =CreateChaEx(1078, 15776, 5999, 190, 60,map_copy)
		local Monster306 =CreateChaEx(1076, 14497, 4230, 115, 60,map_copy)
		local Monster307 =CreateChaEx(1076, 17683, 4209, 250, 60,map_copy)
		local Monster308 =CreateChaEx(1079, 19524, 4054, 220, 60,map_copy)
		local Monster309 =CreateChaEx(1076, 19698, 3217, 160, 60,map_copy)
		local Monster310 =CreateChaEx(1079, 19010, 3462, 145, 60,map_copy)
		local Monster311 =CreateChaEx(1078, 17617, 3373, 145, 60,map_copy)
		local Monster312 =CreateChaEx(1077, 16722, 2757, 145, 60,map_copy)
		local Monster313 =CreateChaEx(1076, 15852, 3275, 145, 60,map_copy)
		local Monster314 =CreateChaEx(1079, 15111, 3340, 145, 60,map_copy)
		local Monster315 =CreateChaEx(1078, 14381, 2672, 145, 60,map_copy)
		local Monster316 =CreateChaEx(1077, 13548, 3291, 145, 60,map_copy)
		local Monster317 =CreateChaEx(1079, 12330, 2930, 145, 60,map_copy)
		local Monster318 =CreateChaEx(1078, 11616, 3663, 145, 60,map_copy)
		local Monster319 =CreateChaEx(1077, 10642, 2901, 145, 60,map_copy)
		local Monster320 =CreateChaEx(1076, 10180, 4087, 145, 60,map_copy)
		local Monster321 =CreateChaEx(1079, 9541, 3296, 145, 60,map_copy)
		local Monster322 =CreateChaEx(1078, 9087, 3095, 145, 60,map_copy)
		local Monster323 =CreateChaEx(1079, 8476, 3854, 145, 60,map_copy)
		local Monster324 =CreateChaEx(1077, 7821, 3114, 145, 60,map_copy)
		local Monster325 =CreateChaEx(1076, 6536, 4350, 145, 60,map_copy)
		local Monster326 =CreateChaEx(1077, 7257, 5414, 115, 60,map_copy)
		local Monster327 =CreateChaEx(1078, 7122, 7119, 145, 60,map_copy)
		local Monster328 =CreateChaEx(1079, 7189, 10782, 145, 60,map_copy)
		local Monster329 =CreateChaEx(1078, 7165, 11359, 145, 60,map_copy)
		local Monster330 =CreateChaEx(1077, 7175, 13327, 100, 60,map_copy)
		local Monster331 =CreateChaEx(1076, 7096, 15693, 70, 60,map_copy)
		local Monster332 =CreateChaEx(1077, 6836, 3723, 145, 60,map_copy)
		local Monster333 =CreateChaEx(1077, 21369, 9546, 205, 60,map_copy)
		local Monster334 =CreateChaEx(1077, 21811, 3311, 205, 60,map_copy)
			SetChaLifeTime(Monster168,290050)
			SetChaLifeTime(Monster169,290100)
			SetChaLifeTime(Monster170,290150)
			SetChaLifeTime(Monster171,290200)
			SetChaLifeTime(Monster172,290250)
			SetChaLifeTime(Monster173,290300)
			SetChaLifeTime(Monster174,290350)
			SetChaLifeTime(Monster175,290400)
			SetChaLifeTime(Monster176,290450)
			SetChaLifeTime(Monster177,290500)
			SetChaLifeTime(Monster178,290550)
			SetChaLifeTime(Monster179,290600)
			SetChaLifeTime(Monster180,290650)
			SetChaLifeTime(Monster181,290700)
			SetChaLifeTime(Monster182,290750)
			SetChaLifeTime(Monster183,290800)
			SetChaLifeTime(Monster184,290850)
			SetChaLifeTime(Monster185,290900)
			SetChaLifeTime(Monster186,290950)
			SetChaLifeTime(Monster187,291000)
			SetChaLifeTime(Monster188,291050)
			SetChaLifeTime(Monster189,291100)
			SetChaLifeTime(Monster190,291150)
			SetChaLifeTime(Monster191,291200)
			SetChaLifeTime(Monster192,291250)
			SetChaLifeTime(Monster193,291300)
			SetChaLifeTime(Monster194,291350)
			SetChaLifeTime(Monster195,291400)
			SetChaLifeTime(Monster196,291450)
			SetChaLifeTime(Monster197,291500)
			SetChaLifeTime(Monster198,291550)
			SetChaLifeTime(Monster199,291600)
			SetChaLifeTime(Monster200,291650)
			SetChaLifeTime(Monster201,291700)
			SetChaLifeTime(Monster202,291750)
			SetChaLifeTime(Monster203,291800)
			SetChaLifeTime(Monster204,291850)
			SetChaLifeTime(Monster205,291900)
			SetChaLifeTime(Monster206,291950)
			SetChaLifeTime(Monster207,292000)
			SetChaLifeTime(Monster208,292050)
			SetChaLifeTime(Monster209,292100)
			SetChaLifeTime(Monster210,292150)
			SetChaLifeTime(Monster211,292200)
			SetChaLifeTime(Monster212,292250)
			SetChaLifeTime(Monster213,292300)
			SetChaLifeTime(Monster214,292350)
			SetChaLifeTime(Monster215,292400)
			SetChaLifeTime(Monster216,292450)
			SetChaLifeTime(Monster217,292500)
			SetChaLifeTime(Monster218,292550)
			SetChaLifeTime(Monster219,292600)
			SetChaLifeTime(Monster220,292650)
			SetChaLifeTime(Monster221,292700)
			SetChaLifeTime(Monster222,292750)
			SetChaLifeTime(Monster223,292800)
			SetChaLifeTime(Monster224,292850)
			SetChaLifeTime(Monster225,292900)
			SetChaLifeTime(Monster226,292950)
			SetChaLifeTime(Monster227,293000)
			SetChaLifeTime(Monster228,293050)
			SetChaLifeTime(Monster229,293100)
			SetChaLifeTime(Monster230,293150)
			SetChaLifeTime(Monster231,293200)
			SetChaLifeTime(Monster232,293250)
			SetChaLifeTime(Monster233,293300)
			SetChaLifeTime(Monster234,293350)
			SetChaLifeTime(Monster235,293400)
			SetChaLifeTime(Monster236,293450)
			SetChaLifeTime(Monster237,293500)
			SetChaLifeTime(Monster238,293550)
			SetChaLifeTime(Monster239,293600)
			SetChaLifeTime(Monster240,293650)
			SetChaLifeTime(Monster241,293700)
			SetChaLifeTime(Monster242,293750)
			SetChaLifeTime(Monster243,293800)
			SetChaLifeTime(Monster244,293850)
			SetChaLifeTime(Monster245,293900)
			SetChaLifeTime(Monster246,293950)
			SetChaLifeTime(Monster247,294000)
			SetChaLifeTime(Monster248,294050)
			SetChaLifeTime(Monster249,294100)
			SetChaLifeTime(Monster250,294150)
			SetChaLifeTime(Monster251,294200)
			SetChaLifeTime(Monster252,294250)
			SetChaLifeTime(Monster253,294300)
			SetChaLifeTime(Monster254,294350)
			SetChaLifeTime(Monster255,294400)
			SetChaLifeTime(Monster256,294450)
			SetChaLifeTime(Monster257,294500)
			SetChaLifeTime(Monster258,294550)
			SetChaLifeTime(Monster259,294600)
			SetChaLifeTime(Monster260,294650)
			SetChaLifeTime(Monster261,294700)
			SetChaLifeTime(Monster262,294750)
			SetChaLifeTime(Monster263,294800)
			SetChaLifeTime(Monster264,294850)
			SetChaLifeTime(Monster265,294900)
			SetChaLifeTime(Monster266,294950)
			SetChaLifeTime(Monster267,295000)
			SetChaLifeTime(Monster268,295050)
			SetChaLifeTime(Monster269,295100)
			SetChaLifeTime(Monster270,295150)
			SetChaLifeTime(Monster271,295200)
			SetChaLifeTime(Monster272,295250)
			SetChaLifeTime(Monster273,295300)
			SetChaLifeTime(Monster274,295350)
			SetChaLifeTime(Monster275,295400)
			SetChaLifeTime(Monster276,295450)
			SetChaLifeTime(Monster277,295500)
			SetChaLifeTime(Monster278,295550)
			SetChaLifeTime(Monster279,295600)
			SetChaLifeTime(Monster280,295650)
			SetChaLifeTime(Monster281,295700)
			SetChaLifeTime(Monster282,295750)
			SetChaLifeTime(Monster283,295800)
			SetChaLifeTime(Monster284,295850)
			SetChaLifeTime(Monster285,295900)
			SetChaLifeTime(Monster286,295950)
			SetChaLifeTime(Monster287,296000)
			SetChaLifeTime(Monster288,296050)
			SetChaLifeTime(Monster289,296100)
			SetChaLifeTime(Monster290,296150)
			SetChaLifeTime(Monster291,296200)
			SetChaLifeTime(Monster292,296250)
			SetChaLifeTime(Monster293,296300)
			SetChaLifeTime(Monster294,296350)
			SetChaLifeTime(Monster295,296400)
			SetChaLifeTime(Monster296,296450)
			SetChaLifeTime(Monster297,296500)
			SetChaLifeTime(Monster298,296550)
			SetChaLifeTime(Monster299,296600)
			SetChaLifeTime(Monster300,296650)
			SetChaLifeTime(Monster301,296700)
			SetChaLifeTime(Monster302,296750)
			SetChaLifeTime(Monster303,296800)
			SetChaLifeTime(Monster304,296850)
			SetChaLifeTime(Monster305,296900)
			SetChaLifeTime(Monster306,296950)
			SetChaLifeTime(Monster307,297000)
			SetChaLifeTime(Monster308,297050)
			SetChaLifeTime(Monster309,297100)
			SetChaLifeTime(Monster310,297150)
			SetChaLifeTime(Monster311,297200)
			SetChaLifeTime(Monster312,297250)
			SetChaLifeTime(Monster313,297300)
			SetChaLifeTime(Monster314,297350)
			SetChaLifeTime(Monster315,297400)
			SetChaLifeTime(Monster316,297450)
			SetChaLifeTime(Monster317,297500)
			SetChaLifeTime(Monster318,297550)
			SetChaLifeTime(Monster319,297600)
			SetChaLifeTime(Monster320,297650)
			SetChaLifeTime(Monster321,297700)
			SetChaLifeTime(Monster322,297750)
			SetChaLifeTime(Monster323,297800)
			SetChaLifeTime(Monster324,297850)
			SetChaLifeTime(Monster325,297900)
			SetChaLifeTime(Monster326,297950)
			SetChaLifeTime(Monster327,298000)
			SetChaLifeTime(Monster328,298050)
			SetChaLifeTime(Monster329,298100)
			SetChaLifeTime(Monster330,298150)
			SetChaLifeTime(Monster331,298200)
			SetChaLifeTime(Monster332,298250)
			SetChaLifeTime(Monster333,298300)
			SetChaLifeTime(Monster334,298350)


	end
end
--每5秒执行一次的
function map_run_chaosicicle( map )
	
end

--地图关闭时执行
function map_copy_before_close_chaosicicle( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem")
	end
	How_Many_Active = 0
	Money_all = 2000000
	Every_5_minute = 0
end
function map_copy_close_chaosicicle( map_copy )
	ClearAllSubMapCha(map_copy)
end
--
--地图开关判断——————————————————————————————————————————

function can_open_entry_chaosicicle( map ) 
--	local time = GetTickCount ( ) 
	local Now_Time = GetNowTime()
	if Now_Time ==14 or Now_Time == 20 then
		return 1
	else
		return 1
	end

end 

function GiveSpecItem( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_chaosicicle = Money_all/How_Many_Active
--	SystemNotice(role,How_Many_Active)

	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_chaosicicle )
	--	local message = "今天的乱斗共存活了"..How_Many_Active .. "位玩家,他们每人将获得"..Money_chaosicicle .."的金钱"
	--	SystemNotice(role,How_Many_Active)
		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_chaosicicle )
		--SystemNotice(role,How_Many_Active)
					
		--local message = "今天的乱斗中共存活了"..How_Many_Active .."位玩家,他们每人将获得"..Money_chaosicicle .."的金钱和1个乱斗之星徽章"
		--Notice ( message )
		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1032  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1032  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_chaosicicle )
		local cha_name = GetChaDefaultName ( role )
		local message = "Congratulations "..cha_name.." you have earned ".. Money_chaosicicle .." gold and 1 King of Ring Emblem"
	--	SystemNotice(role,How_Many_Active)
		SystemNotice(role,message)
		return
	end
end 
