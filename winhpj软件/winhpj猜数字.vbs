rem 猜数字 <Created by CYy 20100427>

option explicit
Randomize
dim n
dim info
Dim spea
Dim a
dim b
dim q

info=-1

do until info=1 or info=2 or info=3 or info=0
     info=inputbox("请选择游戏难度。"&chr(10)&"1:低级"&chr(10)&"2:中级"&chr(10)&"3:高级"&chr(10)&"0:退出"&chr(10)&"1是个位数，2是十位数，3是百位数","猜数字 <Created      by CYy 20100427>")
     select case info
     case 1
         n=10
     case 2
         n=100
     case 3
         n=1000
     case 0
         n=0
     case else 
         n=-1
     end select
     if n=-1 then 
         msgbox "输入错误!",16,"猜数字"
     end if
loop
if n=0 then
     wscript.quit
end if
a=int(rnd()*n)
q=int((a))+1

do until a=int(q)
     q=inputbox("猜猜是几?"&chr(10)&"可以随时输入[e]退出。","猜数字 <Created by CYy 20100427>")
     if q="e" then
         msgbox "感谢使用!祝您愉快。",,"猜数字"
         wscript.quit
     end if
     if int(q)>a then
         msgbox "大了!",48,"猜数字"
     end if
     if int(q)<a then 
         msgbox "小了!",48,"猜数字"
     end if
loop
if int(q)=a then 
     msgbox "恭喜你，你赢了!",48,"猜数字"
end if 
msgbox "感谢使用!祝您愉快。",,"猜数字"


