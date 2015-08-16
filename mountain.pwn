new cow[6];
new MountainFood,MountainDrink,MountainParachute,BetCow;
new Ballon;
new Text3D:BetCowTxd,Text3D:BetCowTxd2,Text3D:BallonTxd;
new bool:mountain_start;
new BetCowStats,BallonStats;
new CowWinner;
new BetCowNumber[MAX_PLAYERS];
new BetCowTime;
new bettimer;
new moneybagtimer;
new MountainRent;
new moneybag[10];

#define BALLON_NONE 0
#define BALLON_UP_WAIT 1
#define BALLON_UP_I 2
#define BALLON_UP_II 3
#define BALLON_DOWN_WAIT 4
#define BALLON_DOWN_I 5
#define BALLON_DOWN_II 6

#define BET_WAIT 1
#define BET_ING 2
#define BET_RESULT 3

XB_CreateMountain()
{
CreateDynamicObject(951, -2232.66919, -1746.45569, 480.60178,   0.00000, 0.00000, 33.05999);
CreateDynamicObject(951, -2230.43530, -1745.25244, 480.60178,   0.00000, 0.00000, 33.05999);
CreateDynamicObject(951, -2232.18799, -1733.83032, 480.60178,   0.00000, 0.00000, 141.30000);
CreateDynamicObject(951, -2256.19507, -1746.35095, 487.26617,   0.00000, 0.00000, 3.78000);
CreateDynamicObject(10357, -2411.56934, -1617.23865, 598.87262,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(3935, -2346.24585, -1644.72034, 485.14584,   0.00000, 0.00000, 5.64000);
CreateDynamicObject(3434, -2292.75342, -1688.75122, 488.61090,   0.00000, 0.00000, 22.67999);
CreateDynamicObject(11489, -2352.75610, -1640.70142, 482.29791,   0.00000, 0.00000, 72.24001);
CreateDynamicObject(1340, -2335.14624, -1667.84448, 483.48929,   0.00000, 0.00000, 54.30000);
CreateDynamicObject(1341, -2339.10107, -1662.54480, 483.48929,   0.00000, 0.00000, 115.68001);
CreateDynamicObject(3860, -2323.55591, -1673.96521, 482.89914,   0.00000, 0.00000, -192.60004);
CreateDynamicObject(371, -2323.35425, -1673.06604, 482.66013,   90.00000, 0.00000, 0.00000);
CreateDynamicObject(6965, -2325.49609, -1653.91565, 486.41479,   0.80000, 0.00000, 0.00000);
CreateDynamicObject(9833, -2326.05688, -1654.01978, 484.79471,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(16082, -2338.10645, -1632.78040, 486.74319,   0.00000, -0.10000, 81.78001);
CreateDynamicObject(1369, -2314.30640, -1677.35437, 482.00949,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(1369, -2317.47632, -1682.18005, 482.00949,   0.00000, 0.00000, 52.92000);
CreateDynamicObject(16146, -2325.89331, -1629.77576, 485.61325,   0.00000, 0.00000, -280.37997);
CreateDynamicObject(1493, -2324.49414, -1638.13074, 482.70053,   0.00000, 0.00000, -10.02000);
CreateDynamicObject(985, -2337.03906, -1624.00244, 484.41751,   0.00000, 0.00000, -10.55999);
CreateDynamicObject(985, -2329.36328, -1625.42383, 484.41751,   0.00000, 0.00000, -10.55999);
CreateDynamicObject(985, -2321.63647, -1626.86450, 484.41751,   0.00000, 0.00000, -10.55999);
CreateDynamicObject(985, -2314.00122, -1628.27429, 484.41751,   0.00000, 0.00000, -10.55999);
CreateDynamicObject(985, -2306.38745, -1629.75195, 484.41751,   0.00000, 0.00000, -10.55999);
CreateDynamicObject(985, -2298.73633, -1631.21570, 484.41751,   0.00000, 0.00000, -10.55999);
CreateDynamicObject(985, -2291.06006, -1632.65344, 484.41751,   0.00000, 0.00000, -10.55999);
CreateDynamicObject(985, -2285.11890, -1621.80957, 483.74765,   0.00000, 0.00000, -100.56000);
CreateDynamicObject(985, -2288.19165, -1617.23608, 483.68842,   0.00000, 0.00000, -10.56000);
CreateDynamicObject(985, -2295.85059, -1615.75769, 484.41751,   0.00000, 0.00000, -10.56000);
CreateDynamicObject(985, -2303.53857, -1614.34753, 484.41751,   0.00000, 0.00000, -10.56000);
CreateDynamicObject(985, -2311.13135, -1612.94812, 484.41751,   0.00000, 0.00000, -10.56000);
CreateDynamicObject(985, -2318.72925, -1611.57861, 484.41751,   0.00000, 0.00000, -10.56000);
CreateDynamicObject(985, -2326.42798, -1610.13745, 484.41751,   0.00000, 0.00000, -10.56000);
CreateDynamicObject(985, -2334.07349, -1608.69995, 484.41751,   0.00000, 0.00000, -10.56000);
CreateDynamicObject(985, -2338.77100, -1611.82349, 484.41751,   0.00000, 0.00000, -100.56000);
CreateDynamicObject(985, -2340.18433, -1619.56165, 484.41751,   0.00000, 0.00000, -100.56000);
CreateDynamicObject(1649, -2335.90112, -1623.62769, 490.75989,   0.00000, 0.00000, -8.82000);
CreateDynamicObject(1649, -2338.46484, -1623.24438, 490.75986,   0.00000, 0.00000, -8.82000);
CreateDynamicObject(1649, -2338.46484, -1623.24438, 494.04156,   0.00000, 0.00000, -8.82000);
CreateDynamicObject(1649, -2334.05298, -1626.12000, 490.75989,   0.00000, 0.00000, -98.82000);
CreateDynamicObject(19427, -2338.30054, -1624.08533, 490.31479,   0.00000, 90.08000, -9.96000);
CreateDynamicObject(1649, -2334.05298, -1626.12000, 494.04459,   0.00000, 0.00000, -98.82000);
CreateDynamicObject(1649, -2335.90112, -1623.62769, 494.04141,   0.00000, 0.00000, -8.82000);
CreateDynamicObject(1652, -2327.47119, -1622.94336, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(985, -2286.53955, -1629.52551, 483.74765,   0.00000, 0.00000, -100.56000);
CreateDynamicObject(1652, -2302.28613, -1627.64136, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2326.99219, -1620.50549, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2326.32617, -1617.84717, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2325.91528, -1615.47571, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2325.50732, -1613.21094, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2301.84473, -1625.20288, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2301.16504, -1622.54016, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2300.72485, -1620.16418, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(1652, -2300.31836, -1617.90112, 483.35651,   0.00000, 0.00000, -190.56000);
CreateDynamicObject(19126, -2315.32788, -1655.80200, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2317.60791, -1660.31372, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2321.00830, -1663.04211, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2325.42822, -1664.04456, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2329.99976, -1662.98303, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2333.41797, -1660.29907, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2335.44360, -1656.11926, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2335.36963, -1651.57715, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2333.49658, -1647.44751, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2329.94507, -1644.74829, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2325.42407, -1643.70203, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2321.18628, -1644.56726, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2317.40771, -1647.58521, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2315.57935, -1651.52686, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2341.30933, -1621.59912, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2340.92017, -1619.18604, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2340.38257, -1616.71204, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2339.91016, -1614.17578, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2339.51538, -1612.01355, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2339.00122, -1609.54602, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2286.27466, -1632.35608, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2285.75195, -1629.57422, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2285.15039, -1627.00171, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2284.69702, -1624.54309, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2284.26196, -1622.30518, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2283.73340, -1619.88062, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2289.05322, -1633.78247, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2291.38379, -1633.41638, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2293.79248, -1632.93555, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2296.31177, -1632.46338, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2298.84595, -1631.88892, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2301.64136, -1631.50989, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2304.33862, -1631.02673, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2307.51904, -1630.51843, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2310.53320, -1629.93945, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2313.45825, -1629.44922, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2316.19604, -1628.87622, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2319.03564, -1628.35107, 483.19037,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2241.01587, -1713.81604, 479.84998,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2240.23340, -1718.93835, 479.84998,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2239.76172, -1723.12598, 479.84998,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2239.50684, -1728.88184, 479.84998,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2239.55786, -1733.59167, 479.84998,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2241.22900, -1737.10742, 479.84998,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(19126, -2243.52612, -1741.45679, 479.84998,   0.00000, 0.00000, 0.00000);
CreateDynamicObject(2942, -2316.54541, -1636.83240, 483.25159,   0.00000, 0.00000, 79.13999);
CreateDynamicObject(17065, -2392.46606, -2171.43506, 36.36922,   0.64000, -0.38000, 0.00000);
CreateDynamicObject(3465, -2386.37451, -2176.13062, 33.80450,   0.00000, 0.00000, 90.00000);
CreateDynamicObject(3465, -2398.35352, -2176.04858, 33.80450,   0.00000, 0.00000, 90.00000);
CreateDynamicObject(3465, -2398.63428, -2168.52954, 33.80450,   0.00000, 0.00000, 90.00000);
CreateDynamicObject(3465, -2386.68164, -2168.67578, 33.80450,   0.00000, 0.00000, 90.00000);
CreateActor(11, -2409.6521, -2190.5679, 34.0741,0);
CreateActor(11,-2323.6011, -1674.5692, 482.7572,-15.0);
CreateActor(11,-2335.8108, -1668.6708, 483.3291,-39.0);
CreateActor(11,-2339.7568, -1662.6737, 483.7095,-66.0);
CreateDynamic3DTextLabel("加油站\n [/fill]", COLOR_DARKYELLOW,-2393.4827, -2172.5464, 33.0018, 20, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0);
BetCow=CreateDynamicCP(-2323.9280, -1639.0194, 483.7550,3.0,-1,-1,-1,10.0);
MountainFood=CreateDynamicCP(-2337.8916, -1661.8153, 483.7550,1.0,-1,-1,-1,10.0);




MountainDrink=CreateDynamicCP(-2334.4099, -1666.8474, 483.7550,1.0,-1,-1,-1,10.0);
MountainParachute=CreateDynamicCP(-2322.5435, -1671.4224, 483.7550,1.0,-1,-1,-1,10.0);
Ballon=CreateDynamicObject(19335, -2393.91895, -2203.03198, 32.28440,   0.00000, 0.00000, 0.00000);
MountainRent=CreateDynamicCP(-2409.6978, -2190.0654, 34.1618,1.0,-1,-1,-1,10.0);
/*
-2337.6919, -1727.5714, 484.2820
*/
cow[0]=CreateDynamicObject(16442, -2337.78857, -1622.20227, 484.47971,   0.00000, 0.00000, -6.00000);
cow[1]=CreateDynamicObject(16442, -2337.30933, -1619.81921, 484.47971,   0.00000, 0.00000, -6.00000);
cow[2]=CreateDynamicObject(16442, -2336.93286, -1617.30457, 484.47971,   0.00000, 0.00000, -6.00000);
cow[3]=CreateDynamicObject(16442, -2336.47998, -1614.69690, 484.47971,   0.00000, 0.00000, -6.00000);
cow[4]=CreateDynamicObject(16442, -2336.08154, -1612.47083, 484.47971,   0.00000, 0.00000, -6.00000);
cow[5]=CreateDynamicObject(16442, -2335.65869, -1610.04480, 484.47971,   0.00000, 0.00000, -6.00000);
/*牛的终点坐标
-2289.5022, -1631.4202, 484.4797
-2289.0872, -1628.8475, 484.4797
-2288.6228, -1626.3899, 484.4797
-2288.1248, -1623.8363, 484.4797
-2287.8162, -1621.5088, 484.4797
-2287.3738, -1619.0474, 484.4797
*/
Create3DTextLabel("一号",-1,-2287.8616, -1631.8573, 483.8067,30,0);
Create3DTextLabel("二号",-1,-2287.4744, -1629.0795, 483.8067,30,0);
Create3DTextLabel("三号",-1,-2287.1763, -1626.5673, 483.8067,30,0);
Create3DTextLabel("四号",-1,-2286.8425, -1623.9672, 483.8067,30,0);
Create3DTextLabel("五号",-1,-2286.5181, -1621.7944, 483.8067,30,0);
Create3DTextLabel("六号",-1,-2285.9507, -1619.2378, 483.8067,30,0);
BetCowTxd=Create3DTextLabel("赌牛活动\n未开启",COLOR_YELLOW2,-2337.3838, -1624.2382, 491.4444,20,0);
BetCowTxd2=Create3DTextLabel("赌牛活动\n未开启",COLOR_YELLOW2,-2324.0720, -1639.2991, 483.8643,20,0);
BallonTxd=Create3DTextLabel("热气球上山服务\n该项服务未开启",COLOR_YELLOW2,-2392.1565, -2204.5835, 33.5627,20,0);
SetTimer("XB_MountainCheck",60000,1);
for(new i;i<10;i++)
{
	moneybag[i]=CreateDynamicObject(1550,0,0,-1000,90.0,0,0,-1,-1,-1,100.0,30.0);
}
}

forward XB_MountainCheck();
public XB_MountainCheck()
{
	new h,m,s;
    gettime(h,m,s);
	if(!mountain_start&&h>19)
	{
		XB_StartMountain();
		return ;
	}
	if(mountain_start&&h>=6&&h<=19)
	{
		XB_StopMountain();
		return ;
	}
	return ;
}

XB_StartMountain()
{
	mountain_start=true;
	XB_SetBallon(BALLON_NONE);
	BetCowTime=300;
	BetCowStats=BET_WAIT;
	bettimer=SetTimer("XB_BetCount",1000,1);
	XB_DropMoney();
	moneybagtimer=SetTimer("XB_DropMoney",3600000,1);
	for(new i;i<MAX_PLAYERS;i++)
	{
		if(IsPlayerConnected(i))
		{
			BetCowNumber[i]=0;
		}
	}
	CowWinner=0;
	SendClientMessageToAll(-1,"千年山活动已经开启");
}

XB_StopMountain()
{
	mountain_start=false;
	BetCowStats=0;
	XB_SetBallon(BALLON_NONE);
	CowWinner=0;
	Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球上山服务\n该项服务未开启");
	Update3DTextLabelText(BetCowTxd,COLOR_YELLOW2,"赌牛活动\n未开启");
	Update3DTextLabelText(BetCowTxd2,COLOR_YELLOW2,"赌牛活动\n未开启");
	StopDynamicObject(cow[0]);
	StopDynamicObject(cow[1]);
	StopDynamicObject(cow[2]);
	StopDynamicObject(cow[3]);
	StopDynamicObject(cow[4]);
	StopDynamicObject(cow[5]);
	SetDynamicObjectPos(cow[0], -2337.78857, -1622.20227, 484.47971);
	SetDynamicObjectPos(cow[1], -2337.30933, -1619.81921, 484.47971);
	SetDynamicObjectPos(cow[2], -2336.93286, -1617.30457, 484.47971);
	SetDynamicObjectPos(cow[3], -2336.47998, -1614.69690, 484.47971);
	SetDynamicObjectPos(cow[4], -2336.08154, -1612.47083, 484.47971);
	SetDynamicObjectPos(cow[5], -2335.65869, -1610.04480, 484.47971);
	KillTimer(bettimer);
	KillTimer(moneybagtimer);
	for(new i;i<10;i++)
	{
		SetDynamicObjectPos(moneybag[i],0,0,-1000);
	}
	for(new i;i<MAX_PLAYERS;i++)
	{
		if(IsPlayerConnected(i))
		{
			BetCowNumber[i]=0;
		}
	}
	SendClientMessageToAll(-1,"千年山活动已经关闭");
	
}

forward XB_SetBallon(xb_stats);
public XB_SetBallon(xb_stats)
{
	switch(xb_stats)
	{
		case BALLON_NONE:
		{
            StopDynamicObject(Ballon);
			SetDynamicObjectPos(Ballon,-2393.91895, -2203.03198, 32.28440);
			Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球上山服务\n</buyballon  $50/次>");
		}
		case BALLON_UP_WAIT:
		{
			SetDynamicObjectPos(Ballon,-2393.91895, -2203.03198, 32.28440);
			Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球上山服务已启动\n请尽快上热气球,热气球将在1分钟后离开\n在热气球上升的过程中不要乱动,以免掉下来");
			SetTimerEx("XB_SetBallon",60000,0,"d",BALLON_UP_I);
		}
		case BALLON_UP_I:
		{
            SetDynamicObjectPos(Ballon,-2393.91895, -2203.03198, 32.28440);
            MoveDynamicObject(Ballon,-2393.91895,-2203.03198,484.2820,5,0,0,0);
			Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球正在前往山顶");
		}
		case BALLON_UP_II:
		{
            SetDynamicObjectPos(Ballon,-2393.91895, -2203.03198, 484.2820);
            MoveDynamicObject(Ballon,-2337.6919, -1727.5714, 484.2820,5,0,0,0);
			Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球正在前往山顶");
		}
		case BALLON_DOWN_WAIT:
		{
			SetDynamicObjectPos(Ballon,-2337.6919, -1727.5714, 484.2820);
            SetTimerEx("XB_SetBallon",60000,0,"d",BALLON_DOWN_I);
			Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球正在下山");
		}
		case BALLON_DOWN_I:
		{
			SetDynamicObjectPos(Ballon,-2337.6919, -1727.5714, 484.2820);
            MoveDynamicObject(Ballon,-2393.91895,-2203.03198,484.2820,5,0,0,0);
			Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球正在下山");
		}
		case BALLON_DOWN_II:
		{
			SetDynamicObjectPos(Ballon,-2393.91895,-2203.03198,484.2820);
            MoveDynamicObject(Ballon,-2393.91895,-2203.03198,32.28440,5,0,0,0);
			Update3DTextLabelText(BallonTxd,COLOR_YELLOW2,"热气球正在下山");
		}
	}
	BallonStats=xb_stats;
}

forward XB_BetCount();
public XB_BetCount()
{
	switch(BetCowStats)
	{
		case BET_WAIT:
		{
            BetCowTime--;
        	new string[256];
        	format(string,sizeof string,"赌牛活动\n<正在等待玩家下注>\n<剩余时间: %d秒>",BetCowTime);
        	Update3DTextLabelText(BetCowTxd,COLOR_YELLOW2,string);
        	Update3DTextLabelText(BetCowTxd2,COLOR_YELLOW2,string);
        	if(BetCowTime==0)
        	{
				BetCowStats=BET_ING;
				Update3DTextLabelText(BetCowTxd,COLOR_YELLOW2,"赌牛活动\n<正在跑牛>");
				Update3DTextLabelText(BetCowTxd2,COLOR_YELLOW2,"赌牛活动\n<正在跑牛>");
				StopDynamicObject(cow[0]);
				StopDynamicObject(cow[1]);
				StopDynamicObject(cow[2]);
				StopDynamicObject(cow[3]);
				StopDynamicObject(cow[4]);
				StopDynamicObject(cow[5]);
				SetDynamicObjectPos(cow[0], -2337.78857, -1622.20227, 484.47971);
				SetDynamicObjectPos(cow[1], -2337.30933, -1619.81921, 484.47971);
				SetDynamicObjectPos(cow[2], -2336.93286, -1617.30457, 484.47971);
				SetDynamicObjectPos(cow[3], -2336.47998, -1614.69690, 484.47971);
				SetDynamicObjectPos(cow[4], -2336.08154, -1612.47083, 484.47971);
				SetDynamicObjectPos(cow[5], -2335.65869, -1610.04480, 484.47971);
        	}
		}
		case BET_ING:
		{
			new rand[6];
			for(new i;i<6;i++)
			{
				rand[i]=random(30);
			}
			MoveDynamicObject(cow[0],-2289.5022, -1631.4202, 484.4797,rand[0]/10,0.00000, 0.00000, -6.00000);
			MoveDynamicObject(cow[1],-2289.0872, -1628.8475, 484.4797,rand[1]/10,0.00000, 0.00000, -6.00000);
			MoveDynamicObject(cow[2],-2288.6228, -1626.3899, 484.4797,rand[2]/10,0.00000, 0.00000, -6.00000);
			MoveDynamicObject(cow[3],-2288.1248, -1623.8363, 484.4797,rand[3]/10,0.00000, 0.00000, -6.00000);
			MoveDynamicObject(cow[4],-2287.8162, -1621.5088, 484.4797,rand[4]/10,0.00000, 0.00000, -6.00000);
			MoveDynamicObject(cow[5],-2287.3738, -1619.0474, 484.4797,rand[5]/10,0.00000, 0.00000, -6.00000);
		}
		case BET_RESULT:
		{
			BetCowTime--;
			switch(BetCowTime)
			{
				case 58:
				{
					new string[256];
        	        format(string,sizeof string,"赌牛活动\n<比赛结束 %d号牛赢,一分钟后可再次下注>\n<赢家>:",CowWinner);
        	        for(new i;i<MAX_PLAYERS;i++)
        	        {
						if(IsPlayerConnected(i))
						{
						if(BetCowNumber[i]==CowWinner)
						{
							GivePlayerMoneyEx(i,2000);
							SendClientMessage(i,COLOR_YELLOW2,"恭喜你,你赌赢了,获得$2000");
							format(string,sizeof string,"%s\n%s",string,PlayerInfo[i][pName]);
						}
						BetCowNumber[i]=0;
						}
        	        }
        	        Update3DTextLabelText(BetCowTxd,COLOR_YELLOW2,string);
        	        Update3DTextLabelText(BetCowTxd2,COLOR_YELLOW2,string);
				}
				case 0:
				{
				StopDynamicObject(cow[0]);
				StopDynamicObject(cow[1]);
				StopDynamicObject(cow[2]);
				StopDynamicObject(cow[3]);
				StopDynamicObject(cow[4]);
				StopDynamicObject(cow[5]);
				SetDynamicObjectPos(cow[0], -2337.78857, -1622.20227, 484.47971);
				SetDynamicObjectPos(cow[1], -2337.30933, -1619.81921, 484.47971);
				SetDynamicObjectPos(cow[2], -2336.93286, -1617.30457, 484.47971);
				SetDynamicObjectPos(cow[3], -2336.47998, -1614.69690, 484.47971);
				SetDynamicObjectPos(cow[4], -2336.08154, -1612.47083, 484.47971);
				SetDynamicObjectPos(cow[5], -2335.65869, -1610.04480, 484.47971);
				BetCowTime=300;
	            BetCowStats=BET_WAIT;
				}
			}
		}
	}
}

forward XB_DropMoney();
public XB_DropMoney()
{
	for(new i;i<10;i++)
	{
	    new Float:x,Float:y,Float:z;
        XB_GetRandomPos(-2623.2432, -2150.7654,-2204.8679, -1155.3041,x,y,z);
        MapAndreas_FindZ_For2DCoord(x,y,z);
        SetDynamicObjectPos(moneybag[i],x,y,z);
    }
}

XB_PickMoneyBagHandler(playerid)
{
	new Float:x,Float:y,Float:z;
	for(new i;i<10;i++)
	{
		GetDynamicObjectPos(moneybag[i],x,y,z);
		if(IsPlayerInRangeOfPoint(playerid,3.0,x,y,z))
		{
			SetDynamicObjectPos(moneybag[i],0,0,-1000.0);
			GivePlayerMoneyEx(playerid,300+random(200));
			SendClientMessage(playerid,COLOR_YELLOW2,"你捡起了钱袋,获得了一些现金");
			return ;
		}
	}
	return ;
}
