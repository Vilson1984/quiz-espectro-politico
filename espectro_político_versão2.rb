
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

        matriz = Array.new

        p "Ok, vamos às perguntas..."
        p "Responda com 1, 2, ou 3 conforme o enunciado"
        
        p "1 - Qual a sua opinião sobre a intervenção do Estado na economia?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        resposta = gets.to_i  

      
        
        
        until (resposta == 1) or (resposta == 2) or (resposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta

        

        p "2 - Qual a sua opinião sobre a abertura da economia para mercados internacionais?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta

        p "3 - Na sua opinião o Estado deve ser Laico?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta

        p "4 - Em um ambiente de conflito o que tem prioriadade? A sociedade, ou o capital? "
        p "DIGITE 1 para sociedade"
        p "2 depende" 
        p "3 capital."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta
        

        p "5 - Qual a sua opinião sobre a tributação de impostos, mais substanciais, aos que possuem grande acúmulo patrimonial?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta



        p "6 - Qual a sua opinião sobre cotas raciais em faculdades públicas?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta



        p "7 - Qual a sua opinião sobre a entrada de imigrantes no país?" 
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta



        p "8 - Na sua opinião qual justiça deve ser exercida no país?"
        p " DIGITE 1 para reabilitativa"
        p " 2 depende do caso"
        p "3 punitiva."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta




        p "9 - Você é a favor do crescimento de cidade e pólos industriais, em detrimento do meio-ambiente?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta



        p "10 - Você é a favor de políticas que objetivam uma maior equidade entre todas as classes que constituem uma sociedade?"
        p "DIGITE 1 se é a favor"
        p "2 neutro/não sabe"
        p "3 contra."
        reposta = gets.to_i  

        until (reposta == 1) or (reposta == 2) or (reposta == 3) 
            
            p "Resposta inválida. Digite apenas 1, 2 ou 3."
            reposta = gets.to_i  

        end
        
        matriz << resposta


        #ARRAY COM AS RESPOSTAS
        p matriz

        #SOMA DOS VALORES DA ARRAY
        soma_matriz = matriz.inject(:+)
        p soma_matriz

        #DEFINIÇÃO DO SPECTRO POLÍTICO
        if (soma_matriz <= 10)
                puts "Seu viés político tende mais para à esquerda/progressista"
            elsif (soma_matriz > 10) and (soma_matriz < 20 ) 
                puts "Seu viés político tende mais ao centro"    
            else 
            puts "Seu viés político tende mais à direita/conservadora"
        end

        p "vc deseja refazer o teste?"
        p "Digite 1 para SIM e 2 para NÃO"
        resp_continua = gets.to_i

        if resp_continua == 1
            questionario
            else
            p "Obrigado por participar!"
        end
    end
end

novo_quiz = Questionario.new

p novo_quiz.questionario