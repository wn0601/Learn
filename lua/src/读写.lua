--I/O��Ϊ�ļ������ṩ2����һ��������һ�������io.read()
 
--io.write() �ú��������в�������˳��д����ǰ����ļ���
FILE_NAME = 'H:/lua/test.txt'
FILE_NAME2 = 'H:/lua/lua.txt'
 
function write()
    io.write('hello ', 'world')
end
  
--��ȡָ���ļ�
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
  
--�ַ���д��
function writeFile(file_name,string)
   local f = assert(io.open(file_name, 'w'))
   f:write(string)
   f:close()
end
  
writeFile(FILE_NAME2, getFile(FILE_NAME))