def cifrar_cesar(texto, desplazamiento)
  alfabeto = ('a'..'z').to_a + ('A'..'Z').to_a
  texto_cifrado = ""

  texto.each_char do |char|
    if indice = alfabeto.index(char)
      nuevo_indice = (indice + desplazamiento) % alfabeto.size
      texto_cifrado << alfabeto[nuevo_indice]
    else
      texto_cifrado << char
    end
  end

  texto_cifrado.capitalize
end

puts cifrar_cesar("What a string!", 5)