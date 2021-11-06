--Ԫ��
print("Ԫ��")
mymetatable1={foo=3}
t=setmetatable({},{__index=mymetatable1})
print(t.foo)
--Lua�ͻ�����Ǹ�������table�ͼ�����Ϊ�������ݸ�������
--__index Ԫ�����鿴����Ԫ���Ƿ���ڣ���������ڣ����ؽ��Ϊ nil������������� __index ���ؽ����
print("__index����һ��������")
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

--[[Lua ����һ����Ԫ��ʱ�Ĺ�����ʵ�������� 3 ������:
�ڱ��в��ң�����ҵ������ظ�Ԫ�أ��Ҳ��������
�жϸñ��Ƿ���Ԫ�����û��Ԫ������ nil����Ԫ���������
�ж�Ԫ����û�� index ��������� index ����Ϊ nil���򷵻� nil����� index ������һ����
���ظ� 1��2��3����� index ������һ���������򷵻ظú����ķ���ֵ��
]]--
mytable1 = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable1.key1,mytable1.key2,mytable1.key3)
--[[��������һ��ȱ�ٵ�������ֵ���������ͻ����__newindex Ԫ��������������������������������и�ֵ������
�ڶ�����������ֵʱ�������Ԫ�������������и�ֵ��
��������Ѵ��ڵ��������������и�ֵ����������Ԫ����]]
print("newindex:")
mymetatable = {}
mytable2 = setmetatable({key1 = "value1"}, {__newindex = mymetatable})
print(mytable.key1)
mytable.newkey = "��ֵ2"
print(mytable.newkey,mymetatable.newkey)
mytable.key1 = "��ֵ1"
print(mytable.key1,mymetatable.key1)
print("raeset���±�")
mytable = setmetatable({key1 = "value1"}, {
    __newindex = function(mytable, key, value)
                  rawset(mytable, key, "\""..value.."\"")
    end
  })
  mytable.key1 = "new value"
  mytable.key2 = 4
  print(mytable.key1,mytable.key2)
print("Ϊ����Ӳ�������")
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
print("__call��ͣ�")
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
--__tostring Ԫ���������޸ı�������Ϊ
print("__tostring:")
mytable3 = setmetatable({ 10, 20, 30 }, {
    __tostring = function(mytable3)
      sum = 0
      for k, v in pairs(mytable3) do
                  sum = sum + v
          end
      return "������Ԫ�صĺ�Ϊ " .. sum
    end
  })
  print(mytable3)
