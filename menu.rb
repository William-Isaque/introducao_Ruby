require "./batalha.rb"
 require "./heroi"
 require "./inimigo"
class Menu
    attr_accessor :arrayOpcoes,:opcoes,:item
    def initialize()
        @arrayOpcoes = []
        @opcoes = {}
        @heroi = Heroi.new()
        @inimigo = Inimigo.new()
        @item =  Itemconsumiveis.new(5,"veneno")
        
       
    end
    def verificarOpcoes(opcaoUsr) 
        case opcaoUsr  
            when "i"
                puts "iniciando batalha"
               
                batalhando = Batalha.new(@heroi,@inimigo,item)
             
                batalhando.atacar(@heroi.nome)
                true
            when "m"
               
               @item.totalComida(true)
                true
            when "c"
                puts "criado personagens"
                @heroi.criarHeroi()
                @inimigo.criarInimigo()
                true
            
              
            when "s"
                puts "saindo"
                false
        else  
            puts ""
            puts "\e[31mopção inválida por favor digite novamente \e[0m"
            puts "================================================="
          true
        end
    end
    def mensagemBemvindos
        puts "bem vindo ao jogo"
        puts "================================================="
        puts "digite i para iniciar a batalha "
                puts "digite m para ver os items na mochila"
                puts "digite c para criar um personagem"
                puts "digite s para sair"
                puts "coloque a opcao desejada: "
              opcao = gets.chomp
              return opcao
    end

    def iniciarMenu ()
        repetidor = true
       opcao =  mensagemBemvindos()
    
            while repetidor
              
                
                    if opcao == "i" || opcao == "m"||opcao == "c" 
                        if verificarOpcoes(opcao) 
                          
                            repetidor = true
                            opcao = "".to_sym
                            opcao = mensagemBemvindos()
                        end
                    else
                        if opcao == "s" 
                        verificarOpcoes(opcao)
                        repetidor = false
                            else
                             verificarOpcoes(opcao)
                             opcao = "".to_sym
                            opcao = mensagemBemvindos()
                            repetidor = true
                        end
                    end
            end
          
                    
    end
end

    inicio = Menu.new()
    inicio.iniciarMenu()
