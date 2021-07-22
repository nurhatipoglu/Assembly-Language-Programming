
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

tekrar:
call rand_sayi_uret

call sifir_dokuz

call tus_oku

cmp dl,al;dl gercek rakam, al girilen rakam

jz dogru
call yanlis
jmp tekrar

dogru:

call tebrikler 


ret


rand_sayi_uret:

mov ah,00h
int 1Ah ;cx:dx sistem zamani okundu

ret

sifir_dokuz:
   
mov ax,dx
xor dx,dx
mov cx,10
div cx   ;  dxax/cx ; ax bolum,  dx kalan 
         ;boylece 0-9 arasi sayi uretilir.
ret

tus_oku:

mov ah,01
int 21H  ;basilan karakteri al ye dondurur(ascii)

sub al,30h ;direkt al de rakamin kalmasi saglanir.

ret



tebrikler:

mov dx,offset dogru1 ;string dx e atanir
mov ah,09
int 21h

ret 

yanlis:

mov dx,offset hata ;string dx e atanir
mov ah,09
int 21h

ret

dogru1 db "Tebrikler $"

hata  db " Yanlis Tahmin $"