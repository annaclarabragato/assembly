.MODEL small ; define o modelo de memória small
.STACK 64 ; aloca um espaço de 64 bytes para a pilha

.DATA ; início da seção de dados
message db 'Soldador', '$' ; define uma mensagem e termina $

.CODE ; início da seção de codigo
main proc ; define o início do procedimento principal

mov ax, @data ; carrega o endereço do seguimento em ax, o @ é tipo um "recebe"
mov ds, ax ; move o valor em ax para registrador ds

mov ah, 9h ; prepara o registrador AH para a função 09h do DOS (função de execução, escrever string)
mov dx, offset message ; vai fazer o deslocamento da msg em DX

int 21h ; instrução de interrupção

main endp ; marca o fim
end main ; indica o fim