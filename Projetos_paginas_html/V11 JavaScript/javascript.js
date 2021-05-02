

    function calcularAreaTerreno(largura, comprimento){ //criando uma função para calcular a area do terreno

        comprimento = parseFloat(comprimento); // sair com resultado float 
        largura = parseFloat(largura);

        var area = largura * comprimento;  
        return area
    }

    var largura = prompt("Digite a largura do terreno");
    var comprimento = prompt("Digite o comprimento do terreno");
    var areaTerreno = calcularAreaTerreno(largura,comprimento);
    document.write("O terreno possui " + areaTerreno + " metros quadrados");