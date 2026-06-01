require_relative "../lib/pessoa"
class PessoaView
  
  def initialize(data)
    @data = data
  end

  def menu_pessoa
   loop do
    print "Escolha: 1 - listar | 2 - Cadastrar | 0 - Voltar:  "
    
    escolha = gets.chomp.to_i
    case escolha
    when 1
      p " |   id   |   cpf_cnpj   |   nome cliente   | tipo "
      @data.listar.each_with_index do |p , index| 
        p "#{index +1} | #{p.cpf_cnpj} | #{p.nome} | #{p.tipo}"
      end
    when 2
      print "Informe o CPF/CNPJ: "
      registro = gets.chomp
      print "Informe o nome: "
      nome = gets.chomp
      pessoa = Pessoa.new registro, nome
      @data.add pessoa
    when 0
      break
    else
      p "opção invalida."
    end
   end
  end
end
