
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dx,offset mesaj ;ekrana sifre giriniz mesaji
mov ah,09
int 21h

mov cx,4; sifrede 4 karakter oldugu icin
mov bx, offset sifre ;sifremiz artik bx de

tekrar:
call klavye_oku:

cmp al,[bx];karakterleri karsilastirmak

jne hata_mesaji;esit degilse

inc bx;bir sonraki karakteri karsilastirmak icin

loop tekrar

mov dx,offset dogru
mov ah,09
int 21h ;ekrana yazdirmak
jmp son

hata_mesaji:
mov dx,offset hata
mov ah,09
int 21h  ;ekrana yazdirmak

son:

ret

klavye_oku:
mov ah,07

int 21h ;klavyeden girilen karakterin okunmasi

ret



mesaj db 'Sifre Giriniz $' ;ekrana yazi yazdirma
sifre db 'ulvi'  ;sifre tanimlanir
hata db  'Sifre Yanlis $' ;sifre yanlis girilirse mesaj
dogru db  'Sifre Dogru $';sifre dogruysa mesaj                        
 
