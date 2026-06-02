require_relative "lib/util"
require_relative "views/pessoa_view"
require_relative "data/pessoa_data"
require_relative "views/conta_view"
require_relative "data/conta_data"


tela = Util.new
pessoa_data = PessoaData.new
pessoa_view = PessoaView.new(pessoa_data)
conta_data = ContaData.new
conta_view = ContaView.new(conta_data)

loop = true

while loop

  tela.gerar_titulo("SISTEMA BANCÁRIO")
  print "Escolha: 1 - Pessoa | 2 - Conta:  "
  escolha = gets.chomp.to_i 

  case escolha
  when 1
    tela.gerar_titulo "SB = Pessoa" 
    pessoa_view.menu_pessoa
  when 2 
      tela.gerar_titulo "SB = Conta"
      conta_view.menu_conta
  else
      p "Opção inválida"
  end

  print "Deseja continuar? S - sim | N - não:  "
  continuar = gets.chomp
  loop = false if continuar.upcase == 'N'
end
