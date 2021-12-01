puts "Olá seja bem vindo (a)!"
puts " Vamos juntos descobrir qual é o seu posicionamento político-ideológico? "

#ENTRADA DO NOME E CALCULA A QTDE DE CARACTERES
puts "Digite seu nome:"
nome = gets
letras_nome = nome.length

#ENTRADA DO SOBRENOME E CALCULA A QTDE DE CARACTERES
puts "Olá "+nome+" Qual o seu sobrenome?"
sobrenome = gets
letras_sobrenome = sobrenome.length

#CONCATENA NOME E SOBRENOME
puts "Olá #{nome} #{sobrenome}" 
 
#RETORNA QTDE CARACTERES NOMES PARA USUÁRIO
puts "Vc sabia que o seu nome têm #{letras_nome-1} letras?"  
puts "E o seu sobrenome têm #{letras_sobrenome-1} letras?"

#puts "Qual a data do seu nascimento? - escreva no formato >> AAAA-MM-DD"
#ano_nascimento = gets.to_i
#dia_hoje = Time.now.to_i
#idade = dia_hoje - ano_nascimento
#puts "#{nome} vc têm #{idade} anos."

#QUESTIONÁRIO
p "Ok, vamos às perguntas..."
p "Responda com 1, 2, ou 3 conforme o enunciado"

p "Qual a sua opinião sobre a intervenção do Estado na economia? DIGITE 1 se é a favor, 2 neutro/não sabe ou 3 contra."
reposta_1 = gets.to_i

p "Qual a sua opinião sobre a abertura da economia para mercados internacionais? DIGITE 1 se é contra, 2 neutro/não sabe ou 3 a favor"
reposta_2 = gets.to_i

p "Na sua opinião o Estado deve ser Laico? DIGITE 1 se é a favor, 2 neutro/não sabe ou 3 contra"
reposta_3 = gets.to_i

p "Na sua opinião, em um ambiente de conflito o que tem prioriadade? A sociedade, ou o capital? DIGITE 1 para sociedade, 2 não sabe ou 3 capital."
reposta_4 = gets.to_i

p "Qual a sua opinião sobre a tributação de impostos, mais substanciais, aos que possuem grande acúmulo patrimonial?DIGITE 1 se é a favor, 2 neutro/não sabe ou 3 contra"
reposta_5 = gets.to_i

p "Qual a sua opinião sobre cotas raciais em faculdades públicas? DIGITE 1 se é a favor, 2 neutro/não sabe ou 3 contra"
reposta_6 = gets.to_i

p "Qual a sua opinião sobre a entrada de imigrantes no país? DIGITE 1 se é a favor, 2 neutro/não sabe ou 3 contra"
reposta_7 = gets.to_i

p "Na sua opinião qual justiça deve ser exercida no país?  DIGITE 1 para reabilitativa, 2 depende do caso ou 3 punitiva."
reposta_8 = gets.to_i

p "Você é a favor do crescimento de cidade e pólos industriais, em detrimento do meio-ambiente? DIGITE 1 se é a favor, 2 neutro/não sabe ou 3 contra."
reposta_9 = gets.to_i

p "Você é a favor de políticas que objetivam uma maior equidade entre todas as classes que constituem uma sociedade? DIGITE 1 se é a favor, 2 neutro/não sabe ou 3 contra"
reposta_10 = gets.to_i

#ARRAY COM AS RESPOSTAS
lista = [reposta_1,reposta_2,reposta_3,reposta_4,reposta_5,reposta_6,reposta_7,reposta_8,reposta_9,reposta_10]

#SOMA DOS VALORES DA ARRAY
soma_lista = lista.inject(:+)

#DEFINIÇÃO DO SPECTRO POLÍTICO
if (soma_lista <= 10)
    puts "Seu viés político tende mais para à esquerda/progressista"
elsif (soma_lista > 10) and (soma_lista < 20 ) 
    puts "Seu viés político tende mais ao centro"    
else 
    puts "Seu viés político tende mais à direita/conservadora"
end