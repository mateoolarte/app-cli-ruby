def welcome_message
  puts "Bienvenido a reto 5,"
  puts "Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
  puts
end

aq = [
  {
    question: "Cuanto es 2 + 2",
    answer: 4
  },
  {
    question: "Cual es la capital de Colombia",
    answer: "Bogota"
  },
  {
    question: "Cuantos huesos tiene el cuerpo humano",
    answer: 206
  },
  {
    question: "Cuantas horas tiene un día",
    answer: 24
  },
  {
    question: "¿Cual es la empresa de producción de carros electricos más grande del mundo?",
    answer: "Tesla"
  }
]

welcome_message

aq.each_with_index do |element, index|
  print "Definición: "
  puts aq[index][:question]

  answer = ""

  until aq[index][:answer] == answer
    print "Adivinar: "

    if aq[index][:answer].is_a? Integer
      answer = gets.chomp.to_i
    else
      answer = gets.chomp.capitalize!
    end

    if aq[index][:answer] == answer
      puts "Correcto!"
    else
      puts "Incorrecto!, Trata de nuevo"
    end
  end
end
