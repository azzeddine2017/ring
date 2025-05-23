See "testing file functions" + nl

See "open file" + nl
fp = fopen(exefolder() + "../language/tests/scripts/general/test65.ring","r")

See "reopen" + nl
fp = freopen(exefolder() + "../language/tests/scripts/general/test78.ring","r",fp)
See "close file" + nl
fclose(fp)

see "temp file" + nl
fp = tempfile()
fclose(fp)

see "temp name" + nl
see tempname() + nl

write(exefolder() + "../language/tests/scripts/general/mytest2.txt","test")
remove(exefolder() + "../language/tests/scripts/general/mytest2.txt")
write(exefolder() + "../language/tests/scripts/general/tests1.txt","hello")
rename(exefolder() + "../language/tests/scripts/general/test1.txt",exefolder() + "../language/tests/scripts/general/mytests2.txt")

see "print file" + nl
fp = fopen(filename(),"r")
r = fgetc(fp)
while isstring(r)
        see r
        r = fgetc(fp)
end
fclose(fp)

see nl+"print line from the file" + nl
fp = fopen(filename(),"r")
r = fgets(fp,33)
see r + nl
fclose(fp)
fp = fopen(exefolder() + "../language/tests/scripts/general/test78.txt","w+")
fseek(fp,0,2) # goto end of file
fputc(fp,"t")
fputc(fp,"e")
fputc(fp,"s")
fputc(fp,"t")
fputs(fp,"tests2")
fclose(fp)

see "print file" + nl
see read(exefolder() + "../language/tests/scripts/general/test78.txt")

fp = fopen(exefolder() + "../language/tests/scripts/general/test78.txt","r")
see "testing ungetc() " + nl
for x = 1 to 3
        r = fgetc(fp)
        see r + nl
        ungetc(fp,r)
next
fclose(fp)

see "testing fread() " + nl
fp = fopen(exefilename(),"rb")
r = fread(fp,100)
see r + nl
fclose(fp)

see "testing fwrite() " + nl
fp = fopen(exefolder() + "../language/tests/scripts/general/test1.txt","wb")
fwrite(fp,r)
fclose(fp)
