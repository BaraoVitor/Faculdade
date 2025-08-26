saldo = 0

class banco:
    def depositar(valor):
    global saldo
    saldo += valor
    print("Saldo",saldo)
depositar(100)