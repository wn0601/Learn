--元表
print("元表：")
mymetatable1={foo=3}
t=setmetatable({},{__index=mymetatable1})
print(t.foo)
--Lua就会调用那个函数，table和键会作为参数传递给函数。
--__index 元方法查看表中元素是否存在，如果不存在，返回结果为 nil；如果存在则由 __index 返回结果。
print("__index包含一个函数：")
mytable=setmetatable({key1="value1"},{
    __index=function(mytable,key)
        if key=="key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})
print(mytable.key1,mytable.key2)

--[[Lua 查找一个表元素时的规则，其实就是如下 3 个步骤:
在表中查找，如果找到，返回该元素，找不到则继续
判断该表是否有元表，如果没有元表，返回 nil，有元表则继续。
判断元表有没有 index 方法，如果 index 方法为 nil，则返回 nil；如果 index 方法是一个表，
则重复 1、2、3；如果 index 方法是一个函数，则返回该函数的返回值。
]]--
mytable1 = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable1.key1,mytable1.key2,mytable1.key3)
--[[当你给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在则调用这个函数而不进行赋值操作。
在对新索引键赋值时，会调用元方法，而不进行赋值。
而如果对已存在的索引键，则会进行赋值，而不调用元方法]]
print("newindex:")
mymetatable = {}
mytable2 = setmetatable({key1 = "value1"}, {__newindex = mymetatable})
print(mytable.key1)
mytable.newkey = "新值2"
print(mytable.newkey,mymetatable.newkey)
mytable.key1 = "新值1"
print(mytable.key1,mymetatable.key1)
print("raeset更新表：")
mytable = setmetatable({key1 = "value1"}, {
    __newindex = function(mytable, key, value)
                  rawset(mytable, key, "\""..value.."\"")
    end
  })
  mytable.key1 = "new value"
  mytable.key2 = 4
  print(mytable.key1,mytable.key2)
print("为表添加操作符：")
--[[__add+,__sub-,__mul*,__div/,__mod,__unm,__concat,__eq,__lt,__le]]
function table_maxn(t)
    local mn=0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end
mytable = setmetatable({ 1, 2, 3 }, {
    __add = function(mytable, newtable)
      for i = 1, table_maxn(newtable) do
        table.insert(mytable, table_maxn(mytable)+1,newtable[i])
      end
      return mytable
    end
  })
secondtable = {4,5,6}
mytable = mytable + secondtable
        for k,v in ipairs(mytable) do
print(k,v)
end
print("__call求和：")
mytable = setmetatable({10}, {
    __call = function(mytable, newtable)
          sum = 0
          for i = 1, table_maxn(mytable) do
                  sum = sum + mytable[i]
          end
      for i = 1, table_maxn(newtable) do
                  sum = sum + newtable[i]
          end
          return sum
    end
  })
newtable3 = {10,20,30}
print(mytable(newtable3))
--__tostring 元方法用于修改表的输出行为
print("__tostring:")
mytable3 = setmetatable({ 10, 20, 30 }, {
    __tostring = function(mytable3)
      sum = 0
      for k, v in pairs(mytable3) do
                  sum = sum + v
          end
      return "表所有元素的和为 " .. sum
    end
  })
  print(mytable3)
