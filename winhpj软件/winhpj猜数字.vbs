rem ������ <Created by CYy 20100427>

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
     info=inputbox("��ѡ����Ϸ�Ѷȡ�"&chr(10)&"1:�ͼ�"&chr(10)&"2:�м�"&chr(10)&"3:�߼�"&chr(10)&"0:�˳�"&chr(10)&"1�Ǹ�λ����2��ʮλ����3�ǰ�λ��","������ <Created      by CYy 20100427>")
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
         msgbox "�������!",16,"������"
     end if
loop
if n=0 then
     wscript.quit
end if
a=int(rnd()*n)
q=int((a))+1

do until a=int(q)
     q=inputbox("�²��Ǽ�?"&chr(10)&"������ʱ����[e]�˳���","������ <Created by CYy 20100427>")
     if q="e" then
         msgbox "��лʹ��!ף����졣",,"������"
         wscript.quit
     end if
     if int(q)>a then
         msgbox "����!",48,"������"
     end if
     if int(q)<a then 
         msgbox "С��!",48,"������"
     end if
loop
if int(q)=a then 
     msgbox "��ϲ�㣬��Ӯ��!",48,"������"
end if 
msgbox "��лʹ��!ף����졣",,"������"


