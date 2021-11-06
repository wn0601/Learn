--数学库
print("数学库：")
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
print("随机数：")
for i=0, 5 do
    local n = math.random(10)
    print(n)
end
print("随机种子数：")
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
print("表函数pairs和ipairs区别展示：")
local function display(tbl, fun)
	for k, v in fun(tbl) do
		print(k, v)
	end
end
tbl = {"alpha", "beta", ["one"] = "uno", ["two"] = "dos"}
print("ipairs(从1开始到不连续)----------------")
display(tbl, ipairs)
print("pairs----------------")
display(tbl, pairs)
print("表函数foreachi和foreach区别展示：")
t2 = {2, 4, 6, language="Lua", version="5", 8, 10, 12, web="hello lua","w"}
print("foreachi----------")
table.foreachi(t2, function(i, v) print(i, v) end)
print("foreach----------")
table.foreach(t2, function(i, v) print(i, v) end)
--getn
print("getn()有序输出长度，无序为0：")
local tb3 = {[9]=10,[4]=22,[6]=34,[8]=42,[0]=51}
print(table.getn(tb3))
local tb4 = {34,10,51,22,42}
print(table.getn(tb4))
--操作系统库
print("os:")
print(os.clock())
print(os.time())
print("tmpname:")

local tmpfilename = os.tmpname()
tmpfilename = "."..tmpfilename
print("tmpfilename = "..tmpfilename)

-- 创建打开文件
local myfile = io.open(tmpfilename,"w")
print(myfile)

-- 向文件中写入内容
myfile:write("date=2021/8/15\n");
myfile:write("time=13:48:50")
myfile:close();

-- 再次打开文件
local secfile = io.open(tmpfilename,"r")
print(secfile)

-- 读取文件内容
local content = secfile:read("*a");
secfile:close();

print("file content is:"..content)

-- 获取正确的文件名
tmpfilename = string.sub(tmpfilename, 3, -2)
print("real tmpfilename = "..tmpfilename)
--重命名
test="test.txt"
os.rename("tmpfilename", "test")
print("real tmpfilename = "..test)
-- 删除文件
local ret = os.remove(tmpfilename)
print("remove file ret:")
print(ret)

print("difftime:")
local begtb={year=1990,month=1,day=1,hour=0}
local begtime=os.time(begtb)
local endtb=os.date("*t")
local endtime=os.time(endtb)
print(os.difftime(endtime,begtime))

