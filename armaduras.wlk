object casco{
    method armadura(gladiador) = 10
}

object escudo{
    method armadura(gladiador) = 5 + gladiador.destreza() * 0.1
}
