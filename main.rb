require_relative "lib/conta"

joaoConta = Conta.new 1, "João Barbosa", 0
mariaConta = Conta.new 2, "Maria Barbosa", 0 

joaoConta.depositar 1000
mariaConta.depositar 500

joaoConta.sacar 1000
mariaConta.sacar 1000

puts"#{joaoConta.titular} - Saldo R$ #{ '%2.f' % joaoConta.saldo}"
puts"#{mariaConta.titular} - Saldo R$ #{ '%2.f' % mariaConta.saldo}"

#quiser adicionar outra pessoa repita "conta new" "e "puts"
