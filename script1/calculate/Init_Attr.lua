function Init_attr() 
--LG("init_attr", "enter function initattr : " , "\n" ) 
for i = 0, 240, 1 do							--��ʼ����������
	SetChaAttrMax( i, 100000000) 
end 
end 

Init_attr() 

SetChaAttrMax( ATTR_LV		,	1000			)	-- ��ɫ�ȼ�
SetChaAttrMax( ATTR_HP		,	2000000000	)	-- ��ǰHP
SetChaAttrMax( ATTR_SP		,	2000000000	)	-- ��ǰSP
SetChaAttrMax( ATTR_JOB		,	100			)	-- ��ɫְҵ
SetChaAttrMax( ATTR_CEXP		,	4200000000	)	-- ��ǰ����
SetChaAttrMax( ATTR_NLEXP	,	4200000000	)	-- ��һ�����辭��
SetChaAttrMax( ATTR_AP		,	300			)	-- ���Ե�
SetChaAttrMax( ATTR_TP		,	200			)	-- ���ܵ�
SetChaAttrMax( ATTR_GD		,	2000000000	)	-- ��Ǯ
SetChaAttrMax( ATTR_CLEXP	,	4200000000	)	--��ǰ�ȼ��ľ���
SetChaAttrMax( ATTR_MXHP	,	2000000000	)	--���hp
SetChaAttrMax( ATTR_MXSP		,	2000000000	)	--���sp
SetChaAttrMax( ATTR_BSTR		,	200			)	-- ��������             
SetChaAttrMax( ATTR_BDEX		,	200			)	-- ��������             
SetChaAttrMax( ATTR_BAGI		,	200			)	-- ��������             
SetChaAttrMax( ATTR_BCON	,	200			)	-- ��������             
SetChaAttrMax( ATTR_BSTA		,	200			)	-- ��������             
SetChaAttrMax( ATTR_BLUK		,	100			)	-- ��������             
SetChaAttrMax( ATTR_BMXHP	,	2000000000	)	-- �������HP         
SetChaAttrMax( ATTR_BMXSP	,	2000000000	)	-- �������SP         
SetChaAttrMax( ATTR_BMNATK	,	99999999			)	-- ������С������    
SetChaAttrMax( ATTR_BMXATK	,	99999999			)	-- ������󹥻���    
SetChaAttrMax( ATTR_BDEF		,	5000			)	-- ����������          
SetChaAttrMax( ATTR_BHIT		,	99999			)	-- ����������          
SetChaAttrMax( ATTR_BFLEE	,	99999			)	-- ����������          
SetChaAttrMax( ATTR_BMF		,	99999			)	-- ����Ѱ����          
SetChaAttrMax( ATTR_BCRT		,	99999			)	-- ����������          
SetChaAttrMax( ATTR_BHREC	,	99999			)	-- ����hp�ָ��ٶ�   
SetChaAttrMax( ATTR_BSREC	,	99999			)	-- ����sp�ָ��ٶ�    
SetChaAttrMax( ATTR_BASPD	,	99999			)	-- �����������       
SetChaAttrMax( ATTR_BADIS	,	99999			)	-- ������������       
SetChaAttrMax( ATTR_BMSPD	,	99999			)	-- �����ƶ��ٶ�       
SetChaAttrMax( ATTR_BCOL		,	9999			)	-- ������Դ�ɼ��ٶ� 
SetChaAttrMax( ATTR_MSPD	,	9999			)	--�ƶ��ٶ�
SetChaAttrMax( ATTR_LHAND_ITEMV	,	9999			)	--���ֵ��߼ӳ�
SetChaAttrMax( ATTR_BOAT_SHIP	,	100000			)	--��ֻID
SetChaAttrMax( ATTR_BOAT_HEADER	,	100000			)	--��ͷ����
SetChaAttrMax( ATTR_BOAT_BODY	,	100000			)	--��������
SetChaAttrMax( ATTR_BOAT_ENGINE	,	100000			)	--����������
SetChaAttrMax( ATTR_BOAT_CANNON	,	100000			)	--����������
SetChaAttrMax( ATTR_BOAT_PART	,	100000			)	-- ���������
SetChaAttrMax( ATTR_BOAT_BERTH	,	100000			)	--��ֻͣ���ۿ�
SetChaAttrMax( ATTR_BOAT_DBID	,	2000000000			)	--������ID