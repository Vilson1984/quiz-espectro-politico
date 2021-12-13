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

class Questionario
   
    def questionario

        p "Ok, vamos às perguntas..."
        p "Responda com 1, 2, ou 3 conforme o enunciado"
        
        p "1 - Qual a sua opinião sobre a intervenção do Estado na economia?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_1 = gets.to_i  

        until (reposta_1 == 1) or (reposta_1 == 2) or (reposta_1 == 3) 
            
            p "Digite apenas 1, 2 ou 3."
            reposta_1 = gets.to_i  

        end
        
        
        p "2 - Qual a sua opinião sobre a abertura da economia para mercados internacionais?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_2 = gets.to_i
        
        until (reposta_2 == 1) or (reposta_2 == 2)  or (reposta_2 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_2 = gets.to_i  
        end

        p "3 - Na sua opinião o Estado deve ser Laico?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_3 = gets.to_i
        
        until (reposta_3 == 1) or (reposta_3 == 2)  or (reposta_3 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_3 = gets.to_i  
        end

        p "4 - Em um ambiente de conflito o que tem prioriadade? A sociedade, ou o capital? "
        p "DIGITE 1 para sociedade"
        p "2 depende" 
        p "3 capital."
        reposta_4 = gets.to_i
        
        until (reposta_4 == 1) or (reposta_4 == 2)  or (reposta_4 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_4 = gets.to_i  
        end
        

        p "5 - Qual a sua opinião sobre a tributação de impostos, mais substanciais, aos que possuem grande acúmulo patrimonial?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_5 = gets.to_i
        
        until (reposta_5 == 1) or (reposta_5 == 2)  or (reposta_5 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_5 = gets.to_i  
        end

        p "6 - Qual a sua opinião sobre cotas raciais em faculdades públicas?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_6 = gets.to_i
        
        until (reposta_6 == 1) or (reposta_6 == 2)  or (reposta_6 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_6 = gets.to_i  
        end


        p "7 - Qual a sua opinião sobre a entrada de imigrantes no país?" 
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_7 = gets.to_i
        
        until (reposta_7 == 1) or (reposta_7 == 2)  or (reposta_7 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_7 = gets.to_i  
        end

        p "8 - Na sua opinião qual justiça deve ser exercida no país?"
        p " DIGITE 1 para reabilitativa"
        p " 2 depende do caso"
        p "3 punitiva."
        reposta_8 = gets.to_i
        
        until (reposta_8 == 1) or (reposta_8 == 2)  or (reposta_8 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_8 = gets.to_i  
        end

        p "9 - Você é a favor do crescimento de cidade e pólos industriais, em detrimento do meio-ambiente?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_9 = gets.to_i
        
        until (reposta_9 == 1) or (reposta_9 == 2)  or (reposta_9 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_9 = gets.to_i  
        end

        p "10 - Você é a favor de políticas que objetivam uma maior equidade entre todas as classes que constituem uma sociedade?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta_10 = gets.to_i    

        until (reposta_10 == 1) or (reposta_10 == 2)  or (reposta_10 == 3)  
            p "Digite apenas 1, 2 ou 3."
            reposta_10 = gets.to_i  
        end

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

        p "vc deseja refazer o teste?"
        p "Digite 1 para SIM e 2 para NÃO"
        resposta = gets.to_i

        if resposta == 1
            questionario
            else
            p "Obrigado por participar!"
        end
    end
end

novo_quiz = Questionario.new

p novo_quiz.questionario


