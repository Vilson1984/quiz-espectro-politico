
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

def valor_nao_aceito
    p "Esse não é um valor aceito! Digite apenas 1, 2 ou 3."
end

def validar_resposta(resposta, matriz)

    until (resposta == 1) or (resposta == 2) or (resposta == 3) 
            
        p valor_nao_aceito
        resposta = gets.to_i  

    end
    
    matriz << resposta
end


class Questionario
    
    def questionario

        matriz = Array.new

        p "Ok, vamos às perguntas..."
        p "Responda com 1, 2, ou 3 conforme o enunciado"
        
        p "P1 ) Qual a sua opinião sobre a intervenção do Estado na economia?"
        p "1 = Sou a favor"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou contra."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
        
   
        p "P2 ) Qual a sua opinião sobre a abertura da economia para mercados internacionais?"
        p "1 = Sou contra"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou a favor"
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  
        
        validar_resposta(resposta, matriz)
        

        p "P3 ) Na sua opinião o Estado deve ser Laico?"
        p "1 = Sou à favor"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou contra."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
        
      

        p "P4 ) Em um ambiente de conflito o que tem prioriadade? A sociedade, ou o capital? "
        p "1 = Sociedade"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Capital."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
        
   
        
        p "P5 ) Qual a sua opinião sobre a tributação de impostos, mais substanciais, aos que possuem grande acúmulo patrimonial?"
        p "1 = Sou à favor"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou contra."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
        
   

        p "P6 ) Qual a sua opinião sobre cotas raciais em faculdades públicas?"
        p "1 = Sou à favor"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou contra."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
        

        p "P7 ) Qual a sua opinião sobre a entrada de imigrantes no país?" 
        p "1 = Sou à favor"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou contra."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
        
  


        p "P8 ) Na sua opinião qual justiça deve ser exercida no país?"
        p "1 = Reabilitativa"
        p "2 = Depende do caso"
        p "3 = Punitiva."
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
   


        p "P9 ) Você é a favor do crescimento de cidade e pólos industriais, em detrimento do meio-ambiente?"
        p "1 = Sou contra"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou a favor."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
        
  

        p "P10 ) Você é a favor de políticas que objetivam uma maior equidade entre todas as classes que constituem uma sociedade?"
        p "1 = Sou à favor"
        p "2 = Sou neutro/ ou depende do contexto"
        p "3 = Sou contra."
        p "Digite o número da sua resposta:"
        resposta = gets.to_i  

        validar_resposta(resposta, matriz)
 
        #ARRAY COM AS RESPOSTAS
        p matriz

        #SOMA DOS VALORES DA ARRAY
        soma_matriz = matriz.inject(:+)
        
        #DEFINIÇÃO DO SPECTRO POLÍTICO
        case soma_matriz
        when 10
            p "Sua visão política é mais alinhada à extrema esquerda"
        when 11..16
            p "Sua visão política é mais alinhada à centro-esquerda"
        when 17..23
            p "Sua visão política é mais alinhada ao centro"
        when 24..29
            p "Sua visão política é mais alinhada à centro-direita"
        else
            p "Sua visão política é mais alinhada à extrema-direita"
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