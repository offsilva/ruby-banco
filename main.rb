require_relative "lib/conta"
require_relative "lib/conta_corrente"

joaoConta = ContaCorrente.new 1, "João Barbosa"
mariaConta = Conta.new 2, "Maria Clara"

joaoConta.depositar 1000
joaoConta.depositar 500

mariaConta.depositar 220

joaoConta.transferir mariaConta, 400
# joaoConta.sacar 800
# mariaConta.sacar 500

puts "#{joaoConta.titular} - Saldo R$ #{ '%.2f' % joaoConta.saldo}"
puts "#{mariaConta.titular} - Saldo R$ #{ '%.2f' % mariaConta.saldo}"
