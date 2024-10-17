//lo hago sin herencia porque no me acordaba como usar cosas como super para el segundo gladiador
class Gladiador{
    

    method atacar(gladiador){
        //también le inflige al atacado tanto daño como la diferencia entre su poder de ataque y la defensa del atacado
        
    }

    method poderDeAtaque(){
        return
    }

    

    method defenderse(){}
}

class Mirmillon{
    var vida = 100
    var property arma
    var property armadura //casco o escudo
    var property fuerza

    method destreza() = 15 

    method defensa(){
        return self.destreza() + armadura.defensa()
    }

    method atacar(gladiador){
        //al atacado tanto daño como la diferencia entre su poder de ataque 
        gladiador.recibirDanio(self.calcularDanio(gladiador), self)
    }

    method calcularDanio(gladiador){
        return 0.max(self.poderDeAtaque() - gladiador.defensa())
    }

    method poderDeAtaque(){
        //El poder de ataque equivale al poder de su arma más su propia fuerza
        return fuerza + arma.ataque()
    }

    method recibirDanio(cantidad, gladiador){
        vida = 0.max(vida - cantidad)
        self.atacar(gladiador)
    }
}

class Dimachaerus{
    var vida = 100
    const property armas = []
    var destreza 

    method destreza() = destreza

    method fuerza() = 10
    
    method defensa(){
        return self.destreza() * 0.5
    }

    method atacar(gladiador){
        gladiador.recibirDanio(self.calcularDanio(gladiador), self)
    }

    method poderDeAtaque(){
        //pero su poder de ataque equivale a su fuerza más la sumatoria de los poderes de todas las armas que tenga.
        return self.fuerza() + self.danioTotalArmas()
        destreza += 1
    }

    method calcularDanio(gladiador){
        return 0.max(self.poderDeAtaque() - gladiador.defensa())
    }

    method danioTotalArmas(){
        return armas.sum({arma => arma.ataque()})
    }

    method recibirDanio(cantidad, gladiador){
        vida = 0.max(vida - cantidad)
        self.atacar(gladiador)
    }
}