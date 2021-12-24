p "Olá! Vamos jogar jogo da forca?"

class Jogo

  def inicio_jogo

    matriz = Array.new
    matriz_resp_errada = Array.new
  
    resposta = "brasil".to_s.chars
    resposta_n = resposta.size

    p "vamos lá... a dica é:"
    p "Um país da América com #{resposta_n} letras"
  
    palpite = gets.to_s.chomp
    p palpite
  
    until matriz == resposta
      palpite = gets.to_s.chomp
      
      case palpite 
  
  
      when "b"
      matriz[0] = "b"
      p "Muito bem, vc acertou!"
      p matriz
     
      when "r"
      matriz[1] = "r"
      p "Muito bem, vc acertou!"
      p matriz
     
      when "a"
      matriz[2] = "a"
      p "Muito bem, vc acertou!"
      p matriz
     
      when "s"
      matriz[3] = "s"
      p "Muito bem, vc acertou!"
      p matriz
     
      when "i"
      matriz[4] = "i"
      p "Muito bem, vc acertou!"
      p matriz
     
      when "l"
      matriz[5] = "l"
      p "Muito bem, vc acertou!"
      p matriz
      
      else 
      
        if matriz_resp_errada.size > 6
          p "vc perdeu!"
          p "Deseja jogar novamente? Digite: "
          p "1 = Sim, desejo jogar novamente"
          p "2 = Não, desejo sair"
          resp_jogar_novamente = gets.to_i
   
          if resp_jogar_novamente == 1
            inicio_jogo
            else
            p "Obrigado por participar."
            break
          end

          else
          p "Tente outra letra"
          matriz_resp_errada << palpite
          p matriz_resp_errada
        end
      end
    end  
  end
end

novo_jogo = Jogo.new
novo_jogo.inicio_jogo