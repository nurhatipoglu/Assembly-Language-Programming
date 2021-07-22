
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,13h
mov ah,0
int 10h ;grafik display modu olarak ayarlandi

mov al,0ch ;piksel rengi kirmizi
mov ah,0ch ;piksel rengi ayarlama fonksiyonu
int 10h

mov si,1
;dikdortgenin alt ve ust cizgilerini cizdirmek
;satir bilgisi sbt kalacak sutun bilgisi degisecek
tekrar1:
mov cx,20 ;sutun baslangic koordinat
mov dx,10 ;satir baslangic koordinat
add cx,si

mov ah,0ch
int 10h ;ust satir cizgisi cizdirir.

add dx,30
int 10h; alt satir cizgisi cizdirir.

inc si
cmp si,40

jne tekrar1


mov si,1
;dikdortgenin sag ve sol cizgilerini cizdirmek
;sutun bilgisi sbt kalacak satir bilgisi(dx) degisecek
tekrar2:
mov cx,20
mov dx,10

add dx,si

mov ah,0ch

int 10h    ;sol yan cizgi cizdiriliyor

add cx,40
int 10h  ;sag yan cizgi cizdiriliyor

inc si

cmp si,30

jne tekrar2

ret




