--第一个lua程序
print("lua:")
print("Hello World!")

--i是一个局部变量
print("local:")
local i=1

--name是一个局部变量
print("全局变量:")
name="wn"

--多变量定义
print("多变量定义：")
local age,height=18,170
sex,work="男","玩"
print(age)
print(height)
print(sex)
print(work)

--算术运算符
print("算术运算符：")
print(1+2)
print(1-2)
print(1*2)
print(1/2)
print(2^2)

--比较运算符
print("比较运算符：")
print(1<2)
print(1>2)
print(1<=2)
print(1>=2)
print(1==2)
print(1~=2)

--[[--逻辑运算符(只有false 和 nil为false)
--a and b a为false,返回a,否则返回b
--a or b a为true,返回a,否则返回b]]--
print("逻辑运算符：")
print(1 and 2)
print(nil and 2)
print(1 or 2)
print(nil or 2)
--print(1 not 2)
--print(0 not 2)
print(2 > 1 and 12)
print(2 < 1 or 12)

--lua中三位运算符（x=a?b:c）
--a and b or c
print("三位运算符：")
print(1 and 2 or 3)
print(nil and 2 or 3)

--代码块
print("代码块：")
do
    print("hello")
end

--table
--table["age"] <==>table.age
print("table:")
table["son"]={name="wn",sex="男"}
print(table.son.name)

table1={
    10,--table[1]=10
    [100]=40,
    lewis={
        age=18,
        gender="male",
    },
    20,--[2]=20
}
print(table1[2])

--函数
print("函数：")
function sum(v1,v2)
    return v1+v2
end
print(sum(4,4))

mul = function(s1,s2)
    return s1*s2
end
print(mul(2,2))

--含有函数变量的表
le={
    age=18,
    w=function(self,message)
        self.age=self.age+1;
        print(self.age..message)
    end
}
print(le.age)
le.w(le,"上班")
le:w("上班")

--type
print("变量类型：")
print(type("Hello world"))
print(type(1))
print(type(2.56))
print(type(true))
print(type(nil))
print(type(print))

print("table:")
--table默认是从1开始的
local tb = {"wn","play","game"}
for k,v in pairs(tb) do
    print(k,v)
end

print("函数：")
--函数
function say(n)
    print(n)
end
say1=say
say1(10)

print("函数作为参数：")
--函数可以作为参数传递
function test(t1, fun)
    for k,v in pairs(t1) do
        print(fun(k,v))
    end
end
tab = {"a","b"}
test(tab,
function(key,val)
    return key.."="..val
end
);