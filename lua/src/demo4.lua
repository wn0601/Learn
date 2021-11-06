--数组
print("数组：")
arr={"lua","lu","l"}
for i =1,3 do
    print(arr[i])
end

--矩阵和多维数组
print("多维数组：")
mt={}
for i=1,10 do
    mt[i]={}
    for j=1,10 do
        mt[i][j]=j
        print("mt["..i.."]["..j.."]".."="..mt[i][j])
    end
end

--table concat连接
print("表：")
fruits = {"banana","orange","apple"}
--没有链接符
print("连接后的字符串 ",table.concat(fruits))
-- 指定连接字符
print("连接后的字符串 ",table.concat(fruits,", "))
-- 指定索引来连接 table
print("连接后的字符串 ",table.concat(fruits,", ", 2,3))
--insert
table.insert(fruits,"pear")
for k,v in ipairs(fruits) do
    print(k,v)
end
print("table插入位置：")
table.insert(fruits,2,"grapes")
for k,v in ipairs(fruits) do
    print(k,v)
end
print(fruits[6])
print("remove：")
table.remove(fruits)
for k,v in ipairs(fruits) do
    print(k,v)
end
print("remove位置：")
table.remove(fruits,2)
for k,v in ipairs(fruits) do
    print(k,v)
end
print("sort：")
table.sort(fruits)
for k,v in ipairs(fruits) do
    print(k,v)
end
--max
print("最大值：")
function table_maxn(t)
    local mn=nil;
    for k,v in pairs(t) do
        if(mn==nil) then
            mn=v
        end
        if mn<v then
            mn=v
        end
    end
    return mn
end
tb={[1]=2,[2]=6,[3]=34,[26]=5}
print("tb最大值：", table_maxn(tb))
--print("tb长度 ", #tb)

--长度
print("获取长度：")
function table_leng(t)
    local leng=0
    for k, v in pairs(t) do
      leng=leng+1
    end
    return leng;
end
  
print(table_leng(tb))

--模块与包 require
print("模块和包：")
require("module")
print(module.constant)
module.func3()
print("别名变量：")
local m=require("module")
print(m.constant)
m.func3()