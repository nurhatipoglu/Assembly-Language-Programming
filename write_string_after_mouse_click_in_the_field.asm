
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,0h
mov ah,0
int 10h ;ekran modu 40*25 ayarlanir

mov ah,06h
mov cl,0;sutun
mov ch,0;satir
mov dh,5
mov bh,20h;yesil(ozelllik)

int 10h


mov ax,0
int 33h ;fare aktif oldu.

mov ax,1
int 33h;fare gorunur oldu.

tekrar:
mov ax,3
int 33h;fare pozisyonu oku bx=1 sol buton, bx=2 sag buton
       ;cx=x koordinat, dx=y koordinat

cmp bx,1 ;solu kontrol et.eger sola basilmadiysa kontrol 
         ;etmeye devam et.
jne tekrar

cmp cx,02fh ;eger sola basildiysa,basilan yerin alanda olma
 ;durumunun kontrolu yapilir alanda degilse tekrar a gider.
jg tekrar

cmp dx,2fh;basilan yer alan disarisinda ise tekrar a git.
jg tekrar

;kursor pozisyonlayalim sonra mesaj bastiracagiz.
mov dh,10 ;satir
mov dl,10 ;sutun
mov bh,0
mov ah,2
int 10h

mov dx,offset msg
mov ah,9
int 21h
ret
msg db "Nur Hatipoglu 170419011 $"


ret




