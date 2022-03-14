module CriarInimigo
    def criarInimigo()
      
        puts "======================================"
        print "coloque o nome do inimigo "
        nome = gets.chomp
        @nome = nome
        loop do
        print "coloque a vida do inimigo: "
        vida = gets.chomp.to_i 
        puts "======================================"
            if  vida > 0
      
           
             @vida = vida
             puts "inimigo #{@nome} com a vida #{@vida} e o poder de #{@poder} foi criado"
        break
            else
                print "\e[31mAtenção\e[0m"
                puts ""
                puts  "\e[31mcoloque a vida maior que zero\e[0m" 
            end       
        end
 end
end








    class Inimigo
        attr_accessor :nome,:vida, :poder
        def initialize()
            
            @poder = 65
           
        end
      include CriarInimigo
       
        end