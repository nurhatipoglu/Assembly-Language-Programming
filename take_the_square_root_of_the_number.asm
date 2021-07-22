

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
          
mov cx,0;baslangic degerini sifirla          
mov ax, 28 ;karekoku alinacak sayi

mov dx,-1  ;referans degeri

tekrar:
add dx,2;referans degeri 2 arttirilir

inc cx; karekok sonucu tutan register

sub ax,dx ;ax-dx
;karekoku alinacak sayidan referans degeri cikarilir

cmp ax,dx;ax,dx den kck ise bitir.

jg tekrar




ret





