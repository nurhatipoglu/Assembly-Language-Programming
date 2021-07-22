
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; mouse kontrolu
mov ax,0 ;mouse aktif yapmak
int 33h
mov ax,1 ;mouse pozisyonu u gostermek
int 33h 


;cx ve dx de mouse konumlari gorunur.
;cx satir bilgisini tutar
;dx sutun bilgisini tutar
;sol butona basarsam bx de 01 gorunur.
;konum bilgisi bu sekilde alinir.
tekrar:
mov ax,3
int 33h

mov ah,1
int 21h
cmp al,65
jne tekrar

ret




