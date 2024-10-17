class ArmaDeFilo{
    const property filo
    const property longitud

    // Las armas de filo aportan un valor de ataque equivalente al filo del arma multiplicado por su longitud
    method ataque() = filo * longitud
}

class ArmaContundente{
    const property peso
    
    //aportan un poder de ataque igual al peso del arma
    method ataque() = peso
}