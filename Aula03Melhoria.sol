// SPDX-License-Identifier: MIT
//0xd9145CCE52D386f254917e481eB44e9943F39138
pragma solidity 0.8.20;


contract AluguelArmazem{

   struct Aluguel {
    
     string locador;
     string  locatario;
     uint256[36]  valorAluguel;
     
    }

    Aluguel aluguel;

    constructor(string memory _locador, string memory _locatario, uint256 _valorAluguel){

        aluguel.locador = _locador;
        aluguel.locatario = _locatario;
        for (uint i = 0; i < 36; i++) {
            aluguel.valorAluguel[i] = _valorAluguel;
        }

    }

    modifier mesInvalidos(uint256 mes) {        
         require(mes > 0 && mes<= 36, "Mes invalido");
        _;

    }

    function setLocador(string memory _locador) public {
        aluguel.locador = _locador;
    }




   function setLocatario(string memory _locatario) public {
        aluguel.locatario = _locatario;
    }




  function vlrAluguel(uint256 mes) public view mesInvalidos(mes) returns (uint256) {      
        return aluguel.valorAluguel[mes-1];
    }




   function NomePartes() public view returns (string memory, string memory) {

        return (aluguel.locador,aluguel.locatario);

    }




   function alterarNomeParte(string memory nvNome, uint256 tipoPessoa) public {

     require(tipoPessoa > 0 && tipoPessoa<= 2, "Tipo de pessoa invalido");

        if (tipoPessoa == 1) {

            aluguel.locador = nvNome;

        } else

        if (tipoPessoa == 2) {

           aluguel.locatario = nvNome;

        }

    }




  function reajustaValores(uint256 mes, uint256 aumento) public mesInvalidos(mes) {  

        for (uint256 i = mes; i < aluguel.valorAluguel.length; i++) {

            aluguel.valorAluguel[i] += aumento;

        }

    }

}