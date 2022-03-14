


        class Itemconsumiveis
             attr_accessor :qtde,:comida
            def initialize(qtde,comida)
                @qtde = qtde
                @comida = comida
           
            end
            def consumindo(jogador)
                comidas_cura = {queijo:10,maca:6,pao:2,veneno:-1}
                for chave,valor in comidas_cura do
               
                    if chave.to_s == self.comida
                     
                jogador.vida += comidas_cura[chave]
                puts"#{jogador.nome} sua vida apos de beber #{jogador.vida}"
                
                    end
                end

            end
            
            def totalComida(funcao)
                comidas_qtde = {queijo:5,maca:15, pao:10,veneno:5} 
            if !funcao 
                for chave,valor in comidas_qtde do
               
                
                    if chave.to_s == self.comida
                        comidas_qtde[chave] -= self.qtde
                       
                       return comidas_qtde[chave]
                   
                    end
                end
            else
                for chave,valor in comidas_qtde do
                    puts "\e[31m#{chave} #{valor}\e[0m"
                end

            end

            end
        end
        class Batalha
           attr_accessor :heroi,:vilao,:item
            def initialize(heroi,vilao,item)
                    @heroi = heroi
                    @vilao = vilao
                    @item = item   
            end
            def beber(jogador)
                 if self.item.totalComida(false) >= 0
                    self.item.consumindo(jogador)
                 else
                    puts "acabou o #{self.item.comida}  "
                 end
            end
            def atacar (personagem)
               
                if  (!self.vilao.nil?) && (!self.heroi.vida.nil?)
                 if (personagem == self.vilao.nome)
                    self.vilao.vida -= self.heroi.poder
                  
                        if self.vilao.vida > 0
                        puts" #{self.vilao.nome} sua vida antes de beber"
                        beber(self.vilao)
                        beber(self.vilao)
                            else 
                                
                                puts "\e[31m o#{self.vilao.nome}morreu\e[0m"
                                puts "\e[32m oganhador é #{self.heroi.nome}\e[0m"
                        end
                    elsif personagem == self.heroi.nome
                      
                       
                        self.heroi.vida -= self.vilao.poder
                        
                       
                        if self.heroi.vida > 0
                     
                        beber(self.heroi)
                        
                        beber(self.heroi)
                      
                            else 
                             
                                puts "o #{self.heroi.nome} morreu"
                                puts "ganhador #{self.vilao.nome}"
                        end
                    
                    end
                else 
                    puts ""
                    puts "================================================="
                    puts "\e[31minicie os personagens para batalhar\e[0m"
                    puts "================================================="
                   
                 
                end
          end
     end
                
    
   
  
  

   
   