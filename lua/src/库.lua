--��ѧ��
print("��ѧ�⣺")
print(math.abs(-3))
print(math.abs(-3.14))
print(math.ceil(-3.14))
print(math.ceil(3.14))
print(math.floor(-3.14))
print(math.floor(3.14))
print(math.max(10,20,40,68,90,43,64))
print(math.min(10,20,40,68,90,43,64))
print(math.pow(2,3))
print(math.sqrt(16))
--random
print("�������")
for i=0, 5 do
    local n = math.random(10)
    print(n)
end
print("�����������")
math.randomseed(os.time())
for i=0, 5 do
    local n = math.random(10)
    print(n)
end
print("-----")
for i=0, 5 do
    math.randomseed(os.time())
    local n = math.random(10)
    print(n)
end
--table
print("����pairs��ipairs����չʾ��")
local function display(tbl, fun)
	for k, v in fun(tbl) do
		print(k, v)
	end
end
tbl = {"alpha", "beta", ["one"] = "uno", ["two"] = "dos"}
print("ipairs(��1��ʼ��������)----------------")
display(tbl, ipairs)
print("pairs----------------")
display(tbl, pairs)
print("����foreachi��foreach����չʾ��")
t2 = {2, 4, 6, language="Lua", version="5", 8, 10, 12, web="hello lua","w"}
print("foreachi----------")
table.foreachi(t2, function(i, v) print(i, v) end)
print("foreach----------")
table.foreach(t2, function(i, v) print(i, v) end)
--getn
print("getn()����������ȣ�����Ϊ0��")
local tb3 = {[9]=10,[4]=22,[6]=34,[8]=42,[0]=51}
print(table.getn(tb3))
local tb4 = {34,10,51,22,42}
print(table.getn(tb4))
--����ϵͳ��
print("os:")
print(os.clock())
print(os.time())
print("tmpname:")

local tmpfilename = os.tmpname()
tmpfilename = "."..tmpfilename
print("tmpfilename = "..tmpfilename)

-- �������ļ�
local myfile = io.open(tmpfilename,"w")
print(myfile)

-- ���ļ���д������
myfile:write("date=2021/8/15\n");
myfile:write("time=13:48:50")
myfile:close();

-- �ٴδ��ļ�
local secfile = io.open(tmpfilename,"r")
print(secfile)

-- ��ȡ�ļ�����
local content = secfile:read("*a");
secfile:close();

print("file content is:"..content)

-- ��ȡ��ȷ���ļ���
tmpfilename = string.sub(tmpfilename, 3, -2)
print("real tmpfilename = "..tmpfilename)
--������
test="test.txt"
os.rename("tmpfilename", "test")
print("real tmpfilename = "..test)
-- ɾ���ļ�
local ret = os.remove(tmpfilename)
print("remove file ret:")
print(ret)

print("difftime:")
local begtb={year=1990,month=1,day=1,hour=0}
local begtime=os.time(begtb)
local endtb=os.date("*t")
local endtime=os.time(endtb)
print(os.difftime(endtime,begtime))

