--I/O库为文件操作提供2个里一个输入库和一个输出库io.read()
 
--io.write() 该函数将所有参数按照顺序写到当前输出文件中
FILE_NAME = 'H:/lua/test.txt'
FILE_NAME2 = 'H:/lua/lua.txt'
 
function write()
    io.write('hello ', 'world')
end
  
--读取指定文件
function getFile(file_name)
    local f = assert(io.open(file_name, 'r'))
    local string = f:read("*all")
    f:close()
    return string
end
  
-- local lines,rest = f:read(BUFSIZE,"*line")
function getFileLine(file_name)
    local BUFSIZE = 84012
    local f = assert(io.open(file_name, 'r'))
    local lines,rest = f:read(BUFSIZE, "*line")
    f:close()
    return lines, rest
end
  
--字符串写入
function writeFile(file_name,string)
   local f = assert(io.open(file_name, 'w'))
   f:write(string)
   f:close()
end
  
writeFile(FILE_NAME2, getFile(FILE_NAME))