#D:\Andestech\AndeSight_RDS_v511\cygwin\bin\bash.exe
export PATH=/cygdrive/d/Andestech/AndeSight_RDS_v511/toolchains/nds32le-elf-mculib-v5/bin:$PATH
export PATH=/cygdrive/d/Andestech/AndeSight_RDS_v511/utils/:$PATH
make clean
make


#

#./riscv32-unknown-elf-gdb -ex "target remote localhost:1111"
# AndeSight_RDS_v511\toolchains\nds32le-elf-mculib-v5\bin\.Andesgdbinit  set verbose on

# info all-registers将会卡死

# 0x80001eae
# monitor reset halt无效
# info program
# list-thread-groups将会卡死

# break *0x80001ea0
# monitor targets

# x/10wx 0x80001234 //查看内存地址 0x80001234 处的前 10 个 32 位整数（十六进制格式）：

# Reset with SMU
# set *(int *)0xF0100014 = 60
# set *(int *)0xF0100014 = 0x3C


# info reg
# monitor targets
# load ae350_demo.adx
# delete mem -y
# monitor nds reset_memAccSize
# mem 0x00000000 0x80000000 rw 64 nocache
# monitor nds memAccSize 0x00000000 0x80000000 32 
# mem 0x80000000 0x90000000 rw 32 nocache
# monitor nds memAccSize 0x80000000 0x90000000 32 
# mem 0xA0000000 0xA0400000 rw 32 nocache
# monitor nds memAccSize 0xA0000000 0xA0400000 32 
# mem 0xC0000000 0xC0100000 rw 32 nocache
# monitor nds memAccSize 0xC0000000 0xC0100000 32 
# mem 0xE0000000 0xE0500000 rw 32 nocache
# monitor nds memAccSize 0xE0000000 0xE0500000 32 
# mem 0xE4000000 0xE6000000 rw 32 nocache
# monitor nds memAccSize 0xE4000000 0xE6000000 32 
# mem 0xE6000000 0xE6100000 rw 32 nocache
# monitor nds memAccSize 0xE6000000 0xE6100000 32 
# mem 0xE6400000 0xE6800000 rw 32 nocache
# monitor nds memAccSize 0xE6400000 0xE6800000 32 
# mem 0xE6800000 0xE6900000 rw 32 nocache
# monitor nds memAccSize 0xE6800000 0xE6900000 32 
# mem 0xE8000000 0xF0000000 rw 32 nocache
# monitor nds memAccSize 0xE8000000 0xF0000000 32 
# mem 0xF0000000 0XF1000000 rw 32 nocache
# monitor nds memAccSize 0xF0000000 0XF1000000 32 
# mem 0xF8000000 0xFC000000 rw 32 nocache
# monitor nds memAccSize 0xF8000000 0xFC000000 32 
# info mem
# p/x (char)-1
# set *(int *)0xF0100014 = 0x3C
# info reg
# set $fp = 0x66