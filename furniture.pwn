//¼Ò¾ßÏµÍ³
#define XB_TREE_MODEL 615
#define XB_WOOD_MODEL 1463
#define XB_TREE_OFFSETZ -0.3
#define XB_WOOD_OFFSETZ 0.3
#define MAX_TREES 100
#define TREE_HP 5000
#define MAX_WOODS 100

#define XB_WOOD_SLOT 8

#define TYPE_GTAFFITI 1
#define TYPE_CHAIRS 2
#define TYPE_TABLES 3
#define TYPE_DINNERTABLES 4
#define TYPE_BEDS 5
#define TYPE_DRESSERS 6
#define TYPE_CABINETS 7
#define TYPE_SOFAS 8
#define TYPE_GRUGS 9
#define TYPE_PICTURES 10
#define TYPE_PLANTS 11
#define TYPE_LAMPS 12
#define TYPE_DECORATIONS 13
#define TYPE_MESS 14
#define TYPE_TVS 15
#define TYPE_KITCHEN 16
#define TYPE_BATHROOM 17
#define TYPE_DOORS 18
#define TYPE_LIGHTS 19
#define TYPE_RAGS 20
#define TYPE_WALLS 21




#define MAX_FURNITURES 1000

enum finfo
{
	Name[128],TypeName[128],Price,Model,Owner[30],bool:Exist,Spawn,FObject,World,Int,Float:FX,Float:FY,Float:FZ,Float:FRX,Float:FRY,Float:FRZ
}

new FurnitureInfo[MAX_FURNITURES][finfo];

enum FURNITURE_DETAILS
{
    furnitureModel,
    furnitureName[128],
    furniturePrice,
    Float:furnitureZ
}
new GraffitiInfo[][FURNITURE_DETAILS] = {
{18659, "Spraytag 1", 200,0.0},
{18660, "Spraytag 2", 400,0.0},
{18661, "Spraytag 3", 600,0.0},
{18662, "Spraytag 4", 300,0.0},
{18663, "Spraytag 5", 600,0.0},
{18664, "Spraytag 6", 300,0.0},
{18665, "Spraytag 7", 300,0.0},
{18666, "Spraytag 8", 260,0.0},
{18667, "Spraytag 9", 240,0.0}
};
new ChairsInfo[][FURNITURE_DETAILS] = {
{1369, "Wheelchair",500,270.0},
{1663, "Swivel chair 1",800,270.0},
{1671, "Swivel chair 2",850,270.0},
{1714, "Swivel chair 3",2000,270.0},
{1715, "Swivel chair 4",1800,270.0},
{1704, "Living room chair 1",1000,270.0},
{1705, "Living room chair 2",1000,270.0},
{1708, "Living room chair 3",1000,270.0},
{1711, "Living room chair 4",600,270.0},
{1720, "Rest chair",500,270.0},
{1721, "Rest chair 2",500,270.0},
{1735, "Rest chair 3",800,270.0},
{1739, "Dinning chair",1000,0.0},
{1811, "Dinning chair 2",500,0.0},
{2079, "Dinning chair 3",800,0.0},
{2120, "Dinning chair 4",800,0.0},
{2121, "Dinning chair 5",500,0.0},
{2123, "Dinning chair 6",500,0.0},
{2124, "Dinning chair 6",600,0.0},
{2125, "Dinning chair 7",1000,0.0},
{2310, "Dinning chair 8",500,0.0},
{2636, "Dinning chair 9",500,0.0},
{1806, "Office chair",850,90.0},
{2309, "Office chair 2",850,90.0},
{1810, "Fold chair",500,90.0}
};
new TablesInfo[][FURNITURE_DETAILS] = {
{1824, "Craps table",5000,270.0},
{1896, "Casino table 2",4000,270.0},
{2964, "Pool table",5000,270.0},
{2964, "Poker table",4500,270.0},
{1826, "Living room rable",3500,270.0},
{1827, "Living room rable 2",2800,270.0},
{2311, "Living room rable 3",1500,270.0},
{2313, "Living room rable 4",1500,270.0},
{2314, "Living room rable 5",1500,270.0},
{2315, "Living room rable 6",1500,270.0},
{2319, "Living room rable 7",1500,270.0},
{2321, "Living room rable 8",1500,270.0},
{2024, "Living room rable 9",4500,270.0},
{2346, "Hifi table",1500,270.0},
{2370, "Hifi table 2",1500,270.0},
{2725, "Strip table",3000,270.0},
{14869, "Bobbie table",3000,0.0}
};
new DinnerTablesInfo[][FURNITURE_DETAILS] = {
{1433, "Dinning table",1000,0.0},
{1516, "Dinning table 2",1000,0.0},
{1737, "Dinning table 3",1000,0.0},
{1770, "Dinning table 4",1000,0.0},
{2029, "Swank dinning",2000,270.0},
{2030, "Roundtable",1500,270.0},
{2086, "Roundtable 2",1500,270.0},
{2109, "Roundtable 3",1000,270.0},
{2111, "Roundtable 4",1500,270.0},
{2031, "Oval table",1650,270.0},
{2032, "Oval table 2",1650,270.0},
{2080, "Oval table 3",1650,270.0},
{2085, "Oval table 4",1650,270.0},
{2118, "Oval table 5",2000,270.0},
{2112, "Square table",1500,270.0},
{2110, "Rectangular table",800,270.0},
{2115, "Rectangular table 2",1000,270.0},
{2116, "Rectangular table 3",1050,270.0},
{2117, "Rectangular table 4",2000,270.0},
{2119, "Rectangular table 5",2000,270.0},
{2357, "Rectangular table 6",1500,270.0}
};
new BedsInfo[][FURNITURE_DETAILS] = {
{1700, "Room bed",2500,270.0},
{1701, "Room bed 2",2500,270.0},
{1745, "Room bed 3",3000,270.0},
{1799, "Room bed 4",3000,270.0},
{1802, "Room bed 5",2450,270.0},
{1771, "Bunk bed",1500,270.0},
{1803, "Bunk bed 2",3000,270.0},
{2300, "Bunk bed 3",2800,270.0},
{1793, "Low bed",2000,270.0},
{1794, "Low bed 2",2000,270.0},
{1796, "Low bed 3",2000,270.0},
{1800, "Low bed 4",1500,270.0},
{1812, "Low bed 5",1000,270.0},
{2302, "Low bed 6",1200,270.0},
{1795, "Swank bed",1500,270.0},
{1797, "Swank bed 2",1800,270.0},
{1798, "Swank bed 3",2500,270.0},
{1801, "Swank bed 4",1950,270.0},
{2090, "Swank bed 5",3000,270.0},
{2298, "Swank bed 6",3500,270.0},
{2299, "Swank bed 7",3000,270.0},
{2301, "Swank bed 8",3000,270.0}
};
new DressersInfo[][FURNITURE_DETAILS] = {
{2562, "Dresser 1",3000,270.0},
{2568, "Dresser 2",3000,270.0},
{2569, "Dresser 3",2500,270.0},
{2570, "Dresser 4",4500,270.0},
{2573, "Dresser 5",6000,270.0},
{2574, "Dresser 6",5500,270.0},
{2576, "Dresser 7",5650,270.0}
};
new CabinetsInfo[][FURNITURE_DETAILS] = {
{911, "Bust cabinet",3000,270.0},
{912, "Bust cabinet 2",3200,270.0},
{913, "Bust cabinet 3",2300,270.0},
{1730, "Swank cabinet",1500,270.0},
{2078, "Swank cabinet 2",3000,270.0},
{2089, "Swank cabinet 3",3000,270.0},
{2094, "Swank cabinet 4",2400,270.0},
{1740, "Small cabinet",800,270.0},
{2088, "Small cabinet 2",1100,270.0},
{2095, "Small cabinet 3",800,270.0},
{2306, "Small cabinet 4",2100,270.0},
{2328, "Small cabinet 5",1500,270.0},
{2329, "Small cabinet 6",3000,270.0},
{2021, "Small cabinet 7",3100,270.0},
{1741, "Medium cabinet",1100,270.0},
{1743, "Medium cabinet 2",1200,270.0},
{2084, "Medium cabinet 3",1200,270.0},
{2087, "Medium cabinet 4",1600,270.0},
{2307, "Medium cabinet 5",2000,270.0},
{2020, "Medium cabinet 6",3500,270.0},
{2197, "Locker",1000,270.0},
{2204, "Office cabinet",4000,270.0}
};
new SofasInfo[][FURNITURE_DETAILS] = {
{1702, "Living room couch",3500,270.0},
{1703, "Living room couch 2",3500,270.0},
{1706, "Living room couch 3",3450,270.0},
{1707, "Living room couch 4",3000,270.0},
{1712, "Living room couch 5",2500,270.0},
{1713, "Living room couch 6",3125,270.0},
{1756, "Living room couch 7",3125,270.0},
{1757, "Living room couch 8",3125,270.0},
{1709, "[Very Long] couch",5000,270.0},
{1710, "[Medium] couch",4500,270.0},
{1760, "[Medium] couch 2",4500,270.0},
{1766, "[Medium] couch 3",3000,270.0},
{1768, "[Medium] couch 4",3300,270.0},
{1753, "Swank couch",5000,270.0},
{1761, "Swank couch 2",4550,270.0},
{1763, "Low couch",3000,270.0},
{1764, "Low couch 2",3000,270.0},
{1716, "Stool 1",1600,270.0},
{1805, "Stool 2",1750,270.0},
{2350, "Bar stool",2500,270.0},
{2723, "Strip stool",4500,270.0}
};
new GrugsInfo[][FURNITURE_DETAILS] = {
{2815, "Living Grug",1500,270.0},
{2833, "Living Grug 2",1500,270.0},
{2834, "Living Grug 3",1500,270.0},
{2835, "Living Grug 4",1500,270.0},
{2836, "Living Grug 5",1500,270.0}
};
new PicturesInfo[][FURNITURE_DETAILS] = {
{2254, "Picture 1",1000,270.0},
{2255, "Picture 2",1000,270.0},
{2556, "Picture 3",1000,270.0},
{2557, "Picture 4",1000,270.0},
{2558, "Picture 5",1000,270.0},
{2559, "Picture 6",1000,270.0},
{2260, "Picture 7",1000,270.0},
{2261, "Picture 8",1000,270.0},
{2262, "Picture 9",1000,270.0},
{2263, "Picture 10",1000,270.0},
{2264, "Picture 11",1000,270.0},
{2265, "Picture 12",1000,270.0},
{2266, "Picture 13",1000,270.0},
{2267, "Picture 14",1000,270.0},
{2268, "Picture 15",1000,270.0},
{2269, "Picture 16",1000,270.0},
{2270, "Picture 17",1000,270.0},
{2270, "Picture 18",1000,270.0},
{2272, "Picture 19",1000,270.0},
{2273, "Picture 20",1000,270.0},
{2274, "Picture 21",1000,270.0},
{2275, "Picture 22",1000,270.0},
{2276, "Picture 23",1000,270.0},
{2277, "Picture 24",1000,270.0},
{2278, "Picture 25",1000,270.0},
{2279, "Picture 26",1000,270.0},
{2280, "Picture 27",1000,270.0},
{2281, "Picture 28",1000,270.0},
{2282, "Picture 29",1000,270.0},
{2283, "Picture 30",1000,270.0},
{2284, "Picture 31",1000,270.0},
{2285, "Picture 32",1000,270.0},
{2286, "Picture 33",1000,270.0},
{2287, "Picture 34",1000,270.0},
{2288, "Picture 35",1000,270.0},
{2289, "Picture 36",1000,270.0}
};
new PlantsInfo[][FURNITURE_DETAILS] = {
{948, "Plant pot 1",1300,270.0},
{949, "Plant pot 2",1500,270.0},
{950, "Plant pot 3",1500,270.0},
{2194, "Plant pot 4",1350,270.0},
{2195, "Plant pot 5",1350,270.0},
{2203, "Plant pot 6",1350,270.0},
{2240, "Plant pot 7",1350,270.0},
{2241, "Plant pot 8",1350,270.0},
{2242, "Plant pot 9",1350,270.0},
{2243, "Plant pot 10",1350,270.0},
{2244, "Plant pot 11",1350,270.0},
{2245, "Plant pot 12",1350,270.0},
{2246, "Plant pot 13",1350,270.0},
{2247, "Plant pot 14",1350,270.0},
{2248, "Plant pot 15",1350,270.0},
{2249, "Plant pot 16",1350,270.0},
{2250, "Plant pot 17",1350,270.0},
{2251, "Plant pot 18",1350,270.0},
{2252, "Plant pot 19",1350,270.0},
{2253, "Plant pot 20",1350,270.0},
{3811, "Plant pot 21",2000,270.0},
{15038, "Plant pot 22",2000,270.0},
{14804, "Plant pot 23",2000,270.0}
};
new LampsInfo[][FURNITURE_DETAILS] = {
{2196, "Office lamp",1000,0.0},
{2238, "Lava lamp",2500,0.0},
{2726, "Strip lamp",2500,0.0},
{3534, "Pink lamp",1200,0.0},
{2023, "Stand lamp",2600,0.0},
{2026, "Ceiling lamp",2500,0.0},
{2105, "Table light",1200,0.0},
{2106, "Table light 2",1200,0.0},
{2108, "Table light 3",1200,0.0}
};
new RandomDecorations[][FURNITURE_DETAILS] = {
{2469, "Plane model 1",800,0.0},
{2470, "Plane model 2",800,0.0},
{2472, "Plane model 3",1000,0.0},
{2473, "Plane model 4",1000,0.0},
{2510, "[BIG] Plane model",3000,270.0}
};
new RandomMess[][FURNITURE_DETAILS] = {
{2670, "Coffee and cigars",800,0.0},
{2671, "Chopsticks and tissues",800,0.0},
{2672, "Burgershot mess",800,0.0},
{2673, "Random mess 1",800,0.0},
{2674, "Cigars and papers",800,0.0},
{2675, "Food mess",800,0.0},
{2676, "Food mess 2",800,0.0},
{2677, "Food mess 3",800,0.0},
{2342, "Coffee and food",800,0.0}
};
new TelevisionsInfo[][FURNITURE_DETAILS] = {
{1429, "Normal T.V",4500,270.0},
{1518, "Normal T.V 2",4250,270.0},
{1747, "Normal T.V 3",4100,270.0},
{1748, "Normal T.V 4",4000,270.0},
{1749, "Normal T.V 5",3850,270.0},
{1750, "Normal T.V 5",3000,270.0},
{1751, "Normal T.V 6",2600,270.0},
{2312, "Normal T.V 7",3100,270.0},
{1752, "Swank T.V",3600,270.0},
{1781, "Swank T.V 2",3500,270.0},
{1786, "Swank T.V 3",3600,270.0},
{1791, "Swank T.V 4",3500,270.0},
{1792, "Swank T.V 5",4000,270.0},
{2091, "T.V inside cabinet",7000,270.0},
{2093, "T.V inside cabinet",5600,270.0},
{2296, "T.V unit",8000,270.0},
{2297, "T.V unit 2",8500,270.0},
{14604, "T.V stand",5600,270.0}
};
new KitchenInfo[][FURNITURE_DETAILS] = {
{2127, "Red refrigerator",5500,270.0},
{2131, "White refrigerator",5500,270.0},
{2147, "Normal gray refrigerator",4000,270.0},
{2133, "White Kitchen Cabinet 1", 4600,270.0},
{2134, "White Kitchen Cabinet 2", 4600,270.0},
{2141, "White Kitchen Cabinet 3", 5000,270.0},
{2338, "Large White Kitchen Cabinet", 4300,270.0},
{2341, "Corner White Kitchen Cabinet", 4550,270.0},
{2334, "Green Kitchen Cabinet 1", 5000,270.0},
{2335, "Green Kitchen Cabinet 2", 5000,270.0},
{2142, "Green Kitchen Cabinet 3", 5500,270.0},
{2156, "Green Kitchen Cabinet 4", 6000,270.0},
{2157, "Green Kitchen Cabinet 5", 6000,270.0},
{2159, "Green Kitchen Cabinet 6", 4600,270.0},
{2143, "Kitchen Cabinet + Washer", 7500,270.0},
{2160, "Kitchen Cabinet + Sink", 7500,270.0},
{2158, "Large Green Kitchen Cabinet", 6000,270.0},
{2128, "Large Red Kitchen Cabinet", 6000,270.0},
{2129, "Red Kitchen Cabinet", 4500,270.0},
{2013, "Kitchen sink",6000,270.0},
{2130, "Kitchen sink 2",6000,270.0},
{2132, "Kitchen sink 3",6000,270.0},
{2136, "Kitchen sink 4",6000,270.0},
{2336, "Kitchen sink 5",4500,270.0},
{2150, "Kitchen sink 6",3000,270.0},
{2149, "Microwave 1",4500,270.0},
{2421, "Microwave 2",5000,270.0},
{2135, "Cooker",5000,270.0},
{2294, "Cooker 2",5500,270.0},
{2339, "Cooker 3",4500,270.0},
{2417, "Cooker 4",4000,270.0},
{2144, "Cooker 5",2550,270.0},
{2017, "Cooker 6",5500,270.0},
{2337, "Washer",2300,270.0},
{2340, "Washer 2",2600,270.0},
{2018, "Washer 3",5000,270.0}
};
new BathroomInfo[][FURNITURE_DETAILS] = {
{2515, "Bathroom sink",2600,270.0},
{2518, "Bathroom sink 2",2850,270.0},
{2523, "Bathroom sink 3",2850,270.0},
{2524, "Bathroom sink 4",2850,270.0},
{2739, "Bathroom sink 5",1500,270.0},
{2514, "Toilet 1",2000,270.0},
{2521, "Toilet 2",1800,270.0},
{2525, "Toilet 3",2400,270.0},
{2528, "Toilet 4",2650,270.0},
{2738, "Toilet 5",1200,270.0},
{2516, "Bath",2000,270.0},
{2519, "Bath 2",2100,270.0},
{2522, "Bath 3",3000,270.0},
{2526, "Bath 4",2500,270.0},
{2517, "Large shower",3500,270.0}
};
new DoorFurniture[][FURNITURE_DETAILS] = {
{1493, "Door 1", 3000,270.0},
{1494, "Door 2", 3000,270.0},
{1495, "Door 3", 3000,270.0},
{1496, "Door 4", 3000,270.0},
{1497, "Door 5", 3000,270.0},
{1498, "Door 6", 3000,270.0},
{1500, "Door 7", 3000,270.0},
{1501, "Door 8", 3000,270.0}
};
new LightsFurniture[][FURNITURE_DETAILS] = {
{18647, "Red Neon", 1100,0.0},
{18648, "Blue Neon", 1120,0.0},
{18649, "Green Neon", 1250,0.0},
{18650, "Yellow Neon", 900,0.0},
{18651, "Pink Neon", 2000,0.0},
{18652, "White Neon", 2100,0.0}
};
new RagFurniture[][FURNITURE_DETAILS] = {
{18911, "Skull Bandana Mask", 240,270.0},
{18912, "Black Bandana Mask", 210,270.0},
{18913, "Green Bandana Mask", 300,270.0},
{18914, "Army Bandana Mask", 340,270.0},
{18915, "Funky Bandana Mask", 380,270.0},
{18916, "Light Bandana Mask", 180,270.0},
{18917, "Dark Blue Bandana Mask", 500,270.0},
{18918, "Gray Bandana Mask", 400,270.0},
{18919, "White Bandana Mask", 200,270.0},
{18920, "Colorful Bandana Mask", 100,270.0}
};
new WallsInfo[][FURNITURE_DETAILS] = {
{19353, "Wall 1",10000,0.0},
{19354, "Wall 2",10000,0.0},
{19355, "Wall 3",10000,0.0},
{19356, "Wall 4",10000,0.0},
{19357, "Wall 5",10000,0.0},
{19358, "Wall 6",10000,0.0},
{19359, "Wall 7",10000,0.0},
{19360, "Wall 8",10000,0.0},
{19361, "Wall 9",10000,0.0},
{19362, "Wall 10",10000,0.0},
{19363, "Wall 11",10000,0.0},
{19364, "Wall 12",10000,0.0},
{19365, "Wall 13",10000,0.0},
{19366, "Wall 14",10000,0.0},
{19367, "Wall 15",10000,0.0},
{19368, "Wall 16",10000,0.0},
{19369, "Wall 17",10000,0.0},
{19370, "Wall 18",10000,0.0},
{19371, "Wall 19",10000,0.0},
{19372, "Wall 20",10000,0.0},
{19373, "Wall 21",10000,0.0},
{19383, "Wall 31",8500,0.0},
{19384, "Wall 32",8500,0.0},
{19385, "Wall 33",8500,0.0},
{19386, "Wall 34",8500,0.0},
{19387, "Wall 35",8500,0.0},
{19388, "Wall 36",8500,0.0},
{19389, "Wall 37",8500,0.0},
{19390, "Wall 38",8500,0.0},
{19391, "Wall 39",8500,0.0},
{19392, "Wall 40",8500,0.0},
{19393, "Wall 41",8500,0.0},
{19394, "Wall 42",8500,0.0},
{19395, "Wall 43",8500,0.0},
{19396, "Wall 44",8500,0.0},
{19397, "Wall 45",8500,0.0},
{19398, "Wall 46",8500,0.0},
{19399, "Wall 47",9000,0.0},
{19400, "Wall 48",9000,0.0},
{19401, "Wall 49",9000,0.0},
{19402, "Wall 50",9000,0.0},
{19403, "Wall 51",9000,0.0},
{19404, "Wall 52",9000,0.0},
{19405, "Wall 53",9000,0.0},
{19406, "Wall 54",9000,0.0},
{19407, "Wall 55",9000,0.0},
{19408, "Wall 56",9000,0.0},
{19409, "Wall 57",9000,0.0},
{19410, "Wall 58",9000,0.0},
{19411, "Wall 59",9000,0.0},
{19412, "Wall 60",9000,0.0},
{19413, "Wall 61",9000,0.0},
{19414, "Wall 62",9000,0.0},
{19415, "Wall 63",9000,0.0},
{19416, "Wall 64",9000,0.0},
{19417, "Wall 65",9000,0.0},
{19426, "Wall 66",7500,0.0},
{19427, "Wall 67",7500,0.0},
{19428, "Wall 68",7500,0.0},
{19429, "Wall 69",7500,0.0},
{19430, "Wall 70",7500,0.0},
{19431, "Wall 71",7500,0.0},
{19432, "Wall 72",7500,0.0},
{19433, "Wall 73",7500,0.0},
{19434, "Wall 74",7500,0.0},
{19435, "Wall 75",7500,0.0},
{19436, "Wall 76",7500,0.0},
{19437, "Wall 77",7500,0.0},
{19438, "Wall 78",7500,0.0},
{19439, "Wall 79",7500,0.0},
{19440, "Wall 80",7500,0.0},
{19441, "Wall 81",7500,0.0},
{19442, "Wall 82",7500,0.0},
{19443, "Wall 83",7500,0.0},
{19444, "Wall 84",7500,0.0},
{19445, "Wall 85",12000,0.0},
{19446, "Wall 86",12000,0.0},
{19447, "Wall 87",12000,0.0},
{19448, "Wall 88",12000,0.0},
{19449, "Wall 89",12000,0.0},
{19450, "Wall 90",12000,0.0},
{19451, "Wall 91",12000,0.0},
{19452, "Wall 92",12000,0.0},
{19453, "Wall 93",12000,0.0}
};


new Text3D:XB_WoodFac,Text3D:XB_WoodStr;
/*
distric 
-487.0972, -1414.5569,-195.8044, -1218.9788

*/
enum tinfo
{
	bool:Spawn,HP,TAngle,TModel,Text3D:TLabel
}
new TreeInfo[MAX_TREES][tinfo];

enum winfo
{
	bool:Spawn,WModel,Text3D:WLabel,
}
new WoodInfo[MAX_WOODS][winfo];

forward XB_KeepAverage();
public XB_KeepAverage()
{
	new amount=XB_GetTrees();
	if(amount<defaulttrees)
	{
		XB_AddTree();
	}
}

XB_FindFreeSlot()
{
	for(new i=1;i<MAX_TREES;i++)
    {
		if(!TreeInfo[i][Spawn])
		{
			return i;
		}
	}
	return -1;
}

Float:XB_GetDistanceBetweenPoints(Float:x,Float:y,Float:tx,Float:ty)
{
  new Float:temp1, Float:temp2;
  temp1 = x-tx;temp2 = y-ty;
  return floatsqroot(temp1*temp1+temp2*temp2);
}

XB_AddTree()
{
	new Float:x,Float:y,Float:z;
	XB_GetRandomPos(-487.0972, -1414.5569,-195.8044, -1218.9788,x,y,z);
	for(new i=1;i<MAX_TREES;i++)
	{
		if(TreeInfo[i][Spawn])
		{
			new Float:tpos[3];
			GetDynamicObjectPos(TreeInfo[i][TModel],tpos[0],tpos[1],tpos[2]);
            new Float:dis=XB_GetDistanceBetweenPoints(tpos[0],tpos[1],x,y);
            if(dis<5)return false;
	    }
     }
     XB_CreateTree(x,y,z+XB_TREE_OFFSETZ);
     return true;
}

XB_GetRandomPos(Float:minx,Float:miny,Float:maxx,Float:maxy,&Float:x,&Float:y,&Float:z)
{
	new rx=floatround(minx*10);
	new ry=floatround(miny*10);
	new rx2=floatround(maxx*10);
	new ry2=floatround(maxy*10);
	new rx3,ry3;
    rx3=random(rx2-rx)+rx;
    ry3=random(ry2-ry)+ry;
	x=rx3/10;
	y=ry3/10;
	MapAndreas_FindZ_For2DCoord(x,y,z);
	return 1;
}

XB_GetTrees()
{
	new amount;
	for(new i=1;i<MAX_TREES;i++)
    {
		if(TreeInfo[i][Spawn])
		{
			amount++;
		}
	}
	return amount;
}

XB_CreateTree(Float:x,Float:y,Float:z)
{
	new tid=XB_FindFreeSlot();
	if(tid==-1)return false;
	TreeInfo[tid][Spawn]=true;
	TreeInfo[tid][HP]=TREE_HP;
	TreeInfo[tid][TAngle]=random(360);
	TreeInfo[tid][TModel]=CreateDynamicObject(XB_TREE_MODEL,x,y,z,0,0,TreeInfo[tid][TAngle],-1,-1,-1,300.0,200.0);
	TreeInfo[tid][TLabel]=Create3DTextLabel("loading",-1,x,y,z+2,20,0,0);
	if(TreeInfo[tid][TLabel]==Text3D:0)
	{
		Delete3DTextLabel(TreeInfo[tid][TLabel]);
		Create3DTextLabel("loading",-1,0,0,-1000,1,0,0);
		TreeInfo[tid][TLabel]=Create3DTextLabel("loading",-1,x,y,z+2,20,0,0);
	}
	XB_SetTreeLabel(tid);
	return true;
}

XB_SetTreeLabel(treeid)
{
	new string[128];
    new percent=TreeInfo[treeid][HP]*100/TREE_HP;
    switch(percent)
    {
		case 0..10:format(string,sizeof string,"{FF0000}¨ƒ");
		case 11..20:format(string,sizeof string,"{FF0000}¨ƒ¨ƒ");
		case 21..30:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ");
		case 31..40:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ¨ƒ");
		case 41..50:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ");
		case 51..60:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ");
		case 61..70:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ");
		case 71..80:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ");
		case 81..90:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ");
		case 91..100:format(string,sizeof string,"¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ¨ƒ");
	}
	Update3DTextLabelText(TreeInfo[treeid][TLabel],-1,string);
}

XB_OnTreeTakeDamage(treeid,amount)
{
	TreeInfo[treeid][HP]-=amount;
	if(TreeInfo[treeid][HP]<=0)
	{
		XB_OnTreePreDeath(treeid);
		return 1;
	}
	XB_SetTreeLabel(treeid);
	return 2;
}

XB_OnTreePreDeath(treeid)
{
	Delete3DTextLabel(TreeInfo[treeid][TLabel]);
	new Float:x,Float:y,Float:z;
	GetDynamicObjectPos(TreeInfo[treeid][TModel],x,y,z);
	MoveDynamicObject(TreeInfo[treeid][TModel],x,y,z-0.2, 0.065, 90.00000000, 0.0, TreeInfo[treeid][TAngle]);
	SetTimerEx("XB_OnTreeDeath",5000,0,"d",treeid);
}


forward XB_OnTreeDeath(treeid);
public XB_OnTreeDeath(treeid)
{
	new dis,Float:x,Float:y,Float:z;
	for(new i;i<3;i++)
	{
		dis+=5;
		GetDynamicObjectPos(TreeInfo[treeid][TModel],x,y,z);
		GetXYByAngle(x,y,TreeInfo[treeid][TAngle]+180,dis);
		MapAndreas_FindZ_For2DCoord(x,y,z);
		XB_CreateWood(x,y,z+XB_WOOD_OFFSETZ,TreeInfo[treeid][TAngle]+90);
	}
	DestroyDynamicObject(TreeInfo[treeid][TModel]);
	TreeInfo[treeid][Spawn]=false;
}

GetXYByAngle(&Float:x, &Float:y,Float:angle, Float:distance)
{
	x += (distance * floatsin(-angle, degrees));
	y += (distance * floatcos(-angle, degrees));
}

XB_CreateWood(Float:x,Float:y,Float:z,angle)
{
	for(new i=1;i<MAX_WOODS;i++)
    {
		if(!WoodInfo[i][Spawn])
		{
            WoodInfo[i][Spawn]=true;
            WoodInfo[i][WModel]=CreateDynamicObject(XB_WOOD_MODEL,x,y,z,0,0,angle,-1,-1,-1,200.0,300.0);
            WoodInfo[i][WLabel]=Create3DTextLabel("<°´¡°c¡±Ê°È¡Ä¾Í·>",-1,x,y,z+1.0,30,0,0);
			return true;
		}
	}
	return false;
}

XB_AttackTreeHandler(playerid)
{
	new Float:x,Float:y,Float:z;
	GetPlayerPos(playerid,x,y,z);
	for(new i=1;i<MAX_TREES;i++)
	{
		if(TreeInfo[i][Spawn])
		{
			new Float:tpos[3];
			GetDynamicObjectPos(TreeInfo[i][TModel],tpos[0],tpos[1],tpos[2]);
			new Float:dis=Float:XB_GetDistanceBetweenPoints(x,y,tpos[0],tpos[1]);
			if(dis<2)
			{
				new damage;
				switch(GetPlayerAnimationIndex(playerid))
				{
					case 1136:damage=10+random(10);
					case 1137:damage=15+random(10);
					case 1138:damage=30+random(20);
				}
				XB_OnTreeTakeDamage(i,damage);
				xb_cuttree[playerid]=true;
				SetTimerEx("XB_ResetCutState",100,0,"d",playerid);
				break;
			}
		}
	}
}

forward XB_ResetCutState(playerid);
public XB_ResetCutState(playerid)
{
	xb_cuttree[playerid]=false;
}

XB_PreOnPlayerPickWood(playerid)
{
	if(PlayerInfo[playerid][pJob]==5)
	{
		for(new i = 1; i < MAX_WOODS; i++)
		{
			if(WoodInfo[i][Spawn])
			{
				new Float:wpos[3];
				GetDynamicObjectPos(WoodInfo[i][WModel],wpos[0],wpos[1],wpos[2]);
				if(IsPlayerInRangeOfPoint(playerid,2.5,wpos[0],wpos[1],wpos[2]))
				{
					XB_DeleteWood(i);
					XB_SetPlayerHandWood(playerid);
					break;
				}
			}
		}
	}
	else SendClientMessage(playerid, -1, "Äã²»ÊÇ·¥Ä¾¹¤.");
}

XB_DeleteWood(id)
{
	DestroyDynamicObject(WoodInfo[id][WModel]);
	Delete3DTextLabel(WoodInfo[id][WLabel]);
	WoodInfo[id][Spawn]=false;
}

XB_SetPlayerHandWood(playerid)
{
	xb_woodinhand[playerid]=true;
	SetPlayerAttachedObject(playerid,XB_WOOD_SLOT,1463,1,0.000000,-0.229000,0.000000,90.00009,0.000000,0.000000,0.632000,0.394999,0.342999);
	SendClientMessage(playerid,-1,"{FF0000}[ÌáÊ¾]{FFFFFF}°ÑÊÖÉÏµÄÄ¾Í·ËÍµ½ÅÔ±ßÄÇ¼ä²Ö¿âÀï");
}

XB_AddWood()
{
	new woods=dini_Int("Woods_Str.ini","woods");
	new string[128];
	woods++;
	dini_IntSet("Woods_Str.ini","woods",woods);
	format(string,sizeof string,"<Ä¾²Ä²Ö¿â>\n<Ä¾Í·: %d¸ù>\nÊäÈë¡°/wood¡±´æ·ÅÄ¾Í·",woods);
	Update3DTextLabelText(XB_WoodStr,COLOR_YELLOW2,string);
}

XB_AddMat(number)
{
	new woods=dini_Int("Woods_Fac.ini","woods");
	new string[128];
	woods+=number;
	dini_IntSet("Woods_Fac.ini","woods",woods);
	format(string,sizeof string,"<Ä¾²Ä¼Ó¹¤³§>\n<Ä¾²Ä´æ»õ: %d>\n<ÊäÈë¡°/buywoodmat¡±¹ºÂòÄ¾²Ä>",woods);
	Update3DTextLabelText(XB_WoodFac,COLOR_YELLOW2,string);
}

XB_DecreaseMat(number)
{
	new woods=dini_Int("Woods_Fac.ini","woods");
	new string[128];
	woods-=number;
	dini_IntSet("Woods_Fac.ini","woods",woods);
	format(string,sizeof string,"<Ä¾²Ä¼Ó¹¤³§>\n<Ä¾²Ä´æ»õ: %d>\n<ÊäÈë¡°/buywoodmat¡±¹ºÂòÄ¾²Ä>",woods);
	Update3DTextLabelText(XB_WoodFac,COLOR_YELLOW2,string);
}

XB_DecreaseWood()
{
	new woods=dini_Int("Woods_Str.ini","woods");
	new string[128];
	woods--;
	dini_IntSet("Woods_Str.ini","woods",woods);
	format(string,sizeof string,"<Ä¾²Ä²Ö¿â>\n<Ä¾Í·: %d¸ù>\nÊäÈë¡°/wood¡±´æ·ÅÄ¾Í·",woods);
	Update3DTextLabelText(XB_WoodStr,COLOR_YELLOW2,string);
}

XB_SetFurniture(playerid,type,id)
{
	new model,name[128],typen[128],price,wood,Float:offsetz,msg[128];
	switch(type)
	{

		case TYPE_GTAFFITI:model=GraffitiInfo[id][furnitureModel],price=GraffitiInfo[id][furniturePrice],format(name,sizeof name,GraffitiInfo[id][furnitureName]),wood=price,offsetz=GraffitiInfo[id][furnitureZ],format(typen,128,"Spraytag");
        case TYPE_CHAIRS:model=ChairsInfo[id][furnitureModel],price=ChairsInfo[id][furniturePrice],format(name,sizeof name,ChairsInfo[id][furnitureName]),wood=price,offsetz=ChairsInfo[id][furnitureZ],format(typen,128,"Charis");

        case TYPE_TABLES:model=TablesInfo[id][furnitureModel],price=TablesInfo[id][furniturePrice],format(name,sizeof name,TablesInfo[id][furnitureName]),wood=price,offsetz=TablesInfo[id][furnitureZ],format(typen,128,"Tables");
        case TYPE_DINNERTABLES:model=DinnerTablesInfo[id][furnitureModel],price=DinnerTablesInfo[id][furniturePrice],format(name,sizeof name,DinnerTablesInfo[id][furnitureName]),wood=price,offsetz=DinnerTablesInfo[id][furnitureZ],format(typen,128,"Dinner Tables");
        case TYPE_BEDS:model=BedsInfo[id][furnitureModel],price=BedsInfo[id][furniturePrice],format(name,sizeof name,BedsInfo[id][furnitureName]),wood=price,offsetz=BedsInfo[id][furnitureZ],format(typen,128,"Beds");





	    case TYPE_DRESSERS:model=DressersInfo[id][furnitureModel],price=DressersInfo[id][furniturePrice],format(name,sizeof name,DressersInfo[id][furnitureName]),wood=price,offsetz=DressersInfo[id][furnitureZ],format(typen,128,"Dressers");
        case TYPE_CABINETS:model=CabinetsInfo[id][furnitureModel],price=CabinetsInfo[id][furniturePrice],format(name,sizeof name,CabinetsInfo[id][furnitureName]),wood=price,offsetz=CabinetsInfo[id][furnitureZ],format(typen,128,"Cabinets");
        case TYPE_SOFAS:model=SofasInfo[id][furnitureModel],price=SofasInfo[id][furniturePrice],format(name,sizeof name,SofasInfo[id][furnitureName]),wood=price,offsetz=SofasInfo[id][furnitureZ],format(typen,128,"Sofas");
        case TYPE_GRUGS:model=GrugsInfo[id][furnitureModel],price=GrugsInfo[id][furniturePrice],format(name,sizeof name,GrugsInfo[id][furnitureName]),wood=price,offsetz=GrugsInfo[id][furnitureZ],format(typen,128,"Grugs");





        case TYPE_PICTURES:model=PicturesInfo[id][furnitureModel],price=PicturesInfo[id][furniturePrice],format(name,sizeof name,PicturesInfo[id][furnitureName]),wood=price,offsetz=PicturesInfo[id][furnitureZ],format(typen,128,"Pictures");
        case TYPE_PLANTS:model=PlantsInfo[id][furnitureModel],price=PlantsInfo[id][furniturePrice],format(name,sizeof name,PlantsInfo[id][furnitureName]),wood=price,offsetz=PlantsInfo[id][furnitureZ],format(typen,128,"Plants");
        case TYPE_LAMPS:model=LampsInfo[id][furnitureModel],price=LampsInfo[id][furniturePrice],format(name,sizeof name,LampsInfo[id][furnitureName]),wood=price,offsetz=LampsInfo[id][furnitureZ],format(typen,128,"Lamps");



        case TYPE_DECORATIONS:model=RandomDecorations[id][furnitureModel],price=RandomDecorations[id][furniturePrice],format(name,sizeof name,RandomDecorations[id][furnitureName]),wood=price,offsetz=RandomDecorations[id][furnitureZ],format(typen,128,"Decorations");
        case TYPE_MESS:model=RandomMess[id][furnitureModel],price=RandomMess[id][furniturePrice],format(name,sizeof name,RandomMess[id][furnitureName]),wood=price,offsetz=RandomMess[id][furnitureZ],format(typen,128,"Mess");
        case TYPE_TVS:model=TelevisionsInfo[id][furnitureModel],price=TelevisionsInfo[id][furniturePrice],format(name,sizeof name,TelevisionsInfo[id][furnitureName]),wood=price,offsetz=TelevisionsInfo[id][furnitureZ],format(typen,128,"Televisions");
        case TYPE_KITCHEN:model=KitchenInfo[id][furnitureModel],price=KitchenInfo[id][furniturePrice],format(name,sizeof name,KitchenInfo[id][furnitureName]),wood=price,offsetz=KitchenInfo[id][furnitureZ],format(typen,128,"Kitchen");
        case TYPE_BATHROOM:model=BathroomInfo[id][furnitureModel],price=BathroomInfo[id][furniturePrice],format(name,sizeof name,BathroomInfo[id][furnitureName]),wood=price,offsetz=BathroomInfo[id][furnitureZ],format(typen,128,"Bathroom");

        case TYPE_DOORS:model=DoorFurniture[id][furnitureModel],price=DoorFurniture[id][furniturePrice],format(name,sizeof name,DoorFurniture[id][furnitureName]),wood=price,offsetz=DoorFurniture[id][furnitureZ],format(typen,128,"Doors");
        case TYPE_LIGHTS:model=LightsFurniture[id][furnitureModel],price=LightsFurniture[id][furniturePrice],format(name,sizeof name,LightsFurniture[id][furnitureName]),wood=price,offsetz=LightsFurniture[id][furnitureZ],format(typen,128,"Lights");
        case TYPE_RAGS:model=RagFurniture[id][furnitureModel],price=RagFurniture[id][furniturePrice],format(name,sizeof name,RagFurniture[id][furnitureName]),wood=price,offsetz=RagFurniture[id][furnitureZ],format(typen,128,"Rags");
        case TYPE_WALLS:model=WallsInfo[id][furnitureModel],price=WallsInfo[id][furniturePrice],format(name,sizeof name,WallsInfo[id][furnitureName]),wood=price,offsetz=WallsInfo[id][furnitureZ],format(typen,128,"Walls");

	}
	SetPVarInt(playerid,"xb_furnituremodel",model);
	SetPVarInt(playerid,"xb_furnitureprice",price);
	SetPVarInt(playerid,"xb_furniturewood",wood);
	SetPVarInt(playerid,"xb_furnitureid",id);
	SetPVarInt(playerid,"xb_furnituretype",type);
	SetPVarString(playerid,"xb_furniturename",name);
	SetPVarString(playerid,"xb_furnituretypename",typen);
	new obj=CreatePlayerObject(playerid,model,2295.9883, 1297.2966, 10.2259,0,0,offsetz-90.0,30.0);
	PlayerTextDrawSetString(playerid,TD_PF_Name,name);
	format(msg,sizeof msg,"%d",wood);
	PlayerTextDrawSetString(playerid,TD_PF_Woods,msg);
	format(msg,sizeof msg,"$%d",price);
	PlayerTextDrawSetString(playerid,TD_PF_Price,msg);
	PlayerTextDrawSetString(playerid,TD_PF_Type,typen);
	new bizid=GetPVarInt(playerid,"xb_businessid");
	format(msg,sizeof msg,"%d",BusinessInfo[bizid][bGoods]);
	PlayerTextDrawSetString(playerid,TD_PF_Woodsleft,msg);
	
	TextDrawShowForPlayer(playerid, TD_F_Box);
	TextDrawShowForPlayer(playerid, TD_F_Furniture);
	TextDrawShowForPlayer(playerid, TD_F_Woodsleft);
	TextDrawShowForPlayer(playerid, TD_F_Type);
	TextDrawShowForPlayer(playerid, TD_F_Type2);
	TextDrawShowForPlayer(playerid, TD_F_Right);
	TextDrawShowForPlayer(playerid, TD_F_Left);
    TextDrawShowForPlayer(playerid, TD_F_TypeLeft);
	TextDrawShowForPlayer(playerid, TD_F_TypeRight);
	TextDrawShowForPlayer(playerid, TD_F_Leave);
	TextDrawShowForPlayer(playerid, TD_F_Buy);
	TextDrawShowForPlayer(playerid, TD_F_Woods);
	TextDrawShowForPlayer(playerid, TD_F_Name);
	TextDrawShowForPlayer(playerid, TD_F_Price);

	PlayerTextDrawShow(playerid, TD_PF_Woods);
	PlayerTextDrawShow(playerid, TD_PF_Name);
	PlayerTextDrawShow(playerid, TD_PF_Price);
	PlayerTextDrawShow(playerid, TD_PF_Woodsleft);
	PlayerTextDrawShow(playerid, TD_PF_Type);

	return obj;

}

XB_GetFurnitures(type)
{
	new fmax;
    switch(type)
	{

		case TYPE_GTAFFITI:fmax=sizeof(GraffitiInfo);
        case TYPE_CHAIRS:fmax=sizeof(ChairsInfo);
        case TYPE_TABLES:fmax=sizeof(TablesInfo);
		case TYPE_DINNERTABLES:fmax=sizeof(DinnerTablesInfo);
		case TYPE_BEDS:fmax=sizeof(BedsInfo);




	    case TYPE_DRESSERS:fmax=sizeof(DressersInfo);
		case TYPE_CABINETS:fmax=sizeof(CabinetsInfo);
		case TYPE_SOFAS:fmax=sizeof(SofasInfo);
		case TYPE_GRUGS:fmax=sizeof(GrugsInfo);




        case TYPE_PICTURES:fmax=sizeof(PicturesInfo);
		case TYPE_PLANTS:fmax=sizeof(PlantsInfo);
		case TYPE_LAMPS:fmax=sizeof(LampsInfo);


        case TYPE_DECORATIONS:fmax=sizeof(RandomDecorations);
		case TYPE_MESS:fmax=sizeof(RandomMess);
		case TYPE_TVS:fmax=sizeof(TelevisionsInfo);
		case TYPE_KITCHEN:fmax=sizeof(KitchenInfo);
		case TYPE_BATHROOM:fmax=sizeof(BathroomInfo);
        case TYPE_DOORS:fmax=sizeof(DoorFurniture);
		case TYPE_LIGHTS:fmax=sizeof(LightsFurniture);
		case TYPE_RAGS:fmax=sizeof(RagFurniture);
		case TYPE_WALLS:fmax=sizeof(WallsInfo);
	}
	return fmax;
}

XB_SetPlayerFurniture(playerid,model,price,name[],tname[])
{
	for(new i=1;i<MAX_FURNITURES;i++)
	{
	    if(!FurnitureInfo[i][Exist])
	    {
			FurnitureInfo[i][Exist]=true;
			FurnitureInfo[i][Spawn]=0;
			format(FurnitureInfo[i][Owner],30,PlayerInfo[playerid][pName]);
			format(FurnitureInfo[i][Name],128,name);
			format(FurnitureInfo[i][TypeName],128,tname);
			FurnitureInfo[i][Model]=model;
			FurnitureInfo[i][Price]=price;
			return true;
		}
	}
	return false;
}

XB_HaveFurniture(playerid)
{
	for(new i=1;i<MAX_FURNITURES;i++)
	{
	    if(FurnitureInfo[i][Exist]&&!FurnitureInfo[i][Spawn]&&!FurnitureInfo[i][Spawn])
	    {
            if(strcmp(PlayerInfo[playerid][pName],FurnitureInfo[i][Owner])==0)
            return true;
		}
	}
	return false;
}

XB_GetFurnitureID(playerid)
{
	for(new i=1;i<MAX_FURNITURES;i++)
	{
	    if(FurnitureInfo[i][Exist]&&!FurnitureInfo[i][Spawn])
	    {
            if(strcmp(PlayerInfo[playerid][pName],FurnitureInfo[i][Owner])==0&&strlen(FurnitureInfo[i][Owner])>0)
            return i;
		}
	}
	return -1;
}

XB_SaveFurnitures()
{
    for(new i=1;i<MAX_FURNITURES;i++)
	{
		new File[128];
		if(FurnitureInfo[i][Exist])
		{
            format(File,sizeof File,"Furnitures/%d.ini",i);
		    if(!fexist(File))dini_Create(File);
			if(FurnitureInfo[i][Spawn])
			{
				GetDynamicObjectPos(FurnitureInfo[i][FObject],FurnitureInfo[i][FX],FurnitureInfo[i][FY],FurnitureInfo[i][FZ]);
				GetDynamicObjectRot(FurnitureInfo[i][FObject],FurnitureInfo[i][FRX],FurnitureInfo[i][FRY],FurnitureInfo[i][FRZ]);
				dini_FloatSet(File,"x",FurnitureInfo[i][FX]);
				dini_FloatSet(File,"y",FurnitureInfo[i][FY]);
				dini_FloatSet(File,"z",FurnitureInfo[i][FZ]);
				dini_FloatSet(File,"rx",FurnitureInfo[i][FRX]);
				dini_FloatSet(File,"ry",FurnitureInfo[i][FRY]);
				dini_FloatSet(File,"rz",FurnitureInfo[i][FRZ]);
			}
			dini_Set(File,"name",FurnitureInfo[i][Name]);
			dini_Set(File,"tname",FurnitureInfo[i][TypeName]);
			dini_Set(File,"owner",FurnitureInfo[i][Owner]);
			dini_IntSet(File,"price",FurnitureInfo[i][Price]);
            dini_IntSet(File,"model",FurnitureInfo[i][Model]);
            dini_IntSet(File,"spawn",FurnitureInfo[i][Spawn]);
            dini_IntSet(File,"world",FurnitureInfo[i][World]);
            dini_IntSet(File,"int",FurnitureInfo[i][Int]);
		}
	}
}

XB_LoadFurnitures()
{
	for(new i=1;i<MAX_FURNITURES;i++)
	{
		new File[128];
		format(File,sizeof File,"Furnitures/%d.ini",i);
		if(fexist(File))
		{
            strmid(FurnitureInfo[i][Name],dini_Get(File,"name"),0,128,128);
            if(strlen(FurnitureInfo[i][Name])<=0)
            {
				dini_Remove(File);
            }
            else
            {
			FurnitureInfo[i][Exist]=true;
			strmid(FurnitureInfo[i][TypeName],dini_Get(File,"tname"),0,128,128);
			strmid(FurnitureInfo[i][Owner],dini_Get(File,"owner"),0,128,128);
			FurnitureInfo[i][Price]=dini_Int(File,"price");
            FurnitureInfo[i][Model]=dini_Int(File,"model");
            FurnitureInfo[i][Spawn]=dini_Int(File,"spawn");
            FurnitureInfo[i][World]=dini_Int(File,"world");
            FurnitureInfo[i][Int]=dini_Int(File,"int");
            if(FurnitureInfo[i][Spawn])
            {
				FurnitureInfo[i][FX]=dini_Float(File,"x");
				FurnitureInfo[i][FY]=dini_Float(File,"y");
				FurnitureInfo[i][FZ]=dini_Float(File,"z");
				FurnitureInfo[i][FRX]=dini_Float(File,"rx");
				FurnitureInfo[i][FRY]=dini_Float(File,"ry");
				FurnitureInfo[i][FRZ]=dini_Float(File,"rz");
				FurnitureInfo[i][FObject]=CreateDynamicObject(FurnitureInfo[i][Model],FurnitureInfo[i][FX],FurnitureInfo[i][FY],FurnitureInfo[i][FZ],FurnitureInfo[i][FRX],FurnitureInfo[i][FRY],FurnitureInfo[i][FRZ],\
				FurnitureInfo[i][World],FurnitureInfo[i][Int],-1,200.0,30.0);
            }
            }
		}
	}
}

XB_DeleteFurniture(i)
{
	if(!FurnitureInfo[i][Exist])return 0;
	if(FurnitureInfo[i][Spawn])
	{
		DestroyDynamicObject(FurnitureInfo[i][FObject]);
	}
	FurnitureInfo[i][Spawn]=0;
	FurnitureInfo[i][Exist]=false;
	return 1;
}

XB_GetIDByObject(objectid)
{
	for(new i=1;i<MAX_FURNITURES;i++)
	{
	    if(FurnitureInfo[i][Exist]&&FurnitureInfo[i][Spawn])
	    {
			if(FurnitureInfo[i][FObject]==objectid)
			return i;
		}
	}
	return -1;
}

XB_OutOfZone(playerid,Float:x,Float:y)
{
    new inbiz=GetPVarInt(playerid, "InBusiness");
    new inhouse=GetPVarInt(playerid,"InHouse");
	new wid=GetPlayerVirtualWorld(playerid);
	if(inbiz)
	{
	    if(BusinessInfo[wid][bID]>0&&!isnull(BusinessInfo[wid][bOwner])&&strcmp(BusinessInfo[wid][bOwner],PlayerInfo[pName],true)==0)
		{
			return false;
		}
	}
    
	if(inhouse)
	{
		if(HouseInfo[wid][hID]>0&&!isnull(HouseInfo[wid][hOwner])&&strcmp(HouseInfo[wid][hOwner],PlayerInfo[playerid][pName],true)==0)
		{
		
			return false;
		}
	}
    for(new h = 0; h != MAX_BUSINESSES; h++)
	{
	    if(BusinessInfo[h][bID]>0&&!isnull(BusinessInfo[h][bOwner])&&strcmp(BusinessInfo[h][bOwner],PlayerInfo[pName],true)==0)
	    {
			new Float:dis=XB_GetDistanceBetweenPoints(x,y,BusinessInfo[h][bX],BusinessInfo[h][bY]);
  			if(dis<=30.0)
  			{
			    return false;
  			}
  		}
  	}
  	for(new h = 0; h != MAX_HOUSES; h++)
	{
	    if(HouseInfo[h][hID]>0&&!isnull(HouseInfo[h][hOwner])&&strcmp(HouseInfo[h][hOwner],PlayerInfo[pName],true)==0)
	    {
            new Float:dis=XB_GetDistanceBetweenPoints(x,y,HouseInfo[h][hX],HouseInfo[h][hY]);
  			if(dis<=30.0)
  			{
  			    return false;
  			}
  		}
  	}
  	return true;
}

Float:XB_GetDistanceBetweenTPoints(Float:x,Float:y,Float:z,Float:tx,Float:ty,Float:tz)
{
  new Float:temp1, Float:temp2 , Float:temp3;
  temp1 = x-tx;temp2 = y-ty;
  temp3 = z-tz;
  return floatsqroot(temp1*temp1+temp2*temp2+temp3*temp3);
}

XB_GetNearestFurniture(playerid)
{
	new Float:dis=999.0,wid=-1;
	for(new i=1;i<MAX_FURNITURES;i++)
	{
	    if(FurnitureInfo[i][Exist]&&FurnitureInfo[i][Spawn])
	    {
			new Float:x,Float:y,Float:z;
			new Float:tx,Float:ty,Float:tz;
			GetDynamicObjectPos(FurnitureInfo[i][FObject],x,y,z);
			GetPlayerPos(playerid,tx,ty,tz);
			new Float:cdis=XB_GetDistanceBetweenTPoints(x,y,z,tx,ty,tz);
			if(cdis<dis)dis=cdis,wid=i;
		}
	}
	if(dis<30.0)
	{
		return wid;
	}
	else
	{
	    return -1;
	}
}

XB_SetJackLabel(string[])
{
    SetObjectMaterialText(JACK_LABEL, string, 0, 90,
    "Arial", 21, 0, 0xFFFF8200, 0xFF000000, OBJECT_MATERIAL_TEXT_ALIGN_CENTER);
}

forward OnJackLabelUpdate();
public OnJackLabelUpdate()
{
	new string[2048];
	for(new i;i<4;i+=2)
	{
		jackmodel[i]=XB_GetRandomModel();
		jackmodel[i+1]=XB_GetRandomModel();
		format(string,sizeof string,"%s\n%s  %s",string,vehicleData[jackmodel[i]-400][typeName],vehicleData[jackmodel[i+1]-400][typeName]);
	}
	XB_SetJackLabel(string);
}

XB_GetRandomModel()
{
	new rand=random(203)+400;
	if(IsABike(rand)||IsACopCar(rand)||IsABoat(rand)||IsAPlane(rand)||IsANPlane(rand))return XB_GetRandomModel();
	return rand;
}
XB_DeleteSaw(user)
{
            new
			query[90];

		if(PlayerInfo[user][pItemType][IDX_STD_ITEM] == 196) {
			PlayerInfo[user][pItemVar][IDX_STD_ITEM] = 0;
			PlayerInfo[user][pItemType][IDX_STD_ITEM] = 0;
			PlayerInfo[user][pItemIndex][IDX_STD_ITEM] = 0;
			PlayerInfo[user][pItemID][IDX_STD_ITEM] = 0;
			RemovePlayerAttachedObject(user, IDX_STD_ITEM);
		}

		mysql_format(sqlHandle, query, sizeof(query), "DELETE FROM `samp_items` WHERE `owner` = '%e' AND `item` = %i", PlayerInfo[user][pName], 196);
		mysql_function_query(sqlHandle, query, false, "", "");
		RemovePlayerItemTypeEx(user, 196);
}
