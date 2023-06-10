// SPDX-License-Identifier: MIT
//0xd9145CCE52D386f254917e481eB44e9943F39138
pragma solidity 0.8.20;


contract AluguelArmazem{

    string public _locador;
    string public _locatario;
    uint256[36] public valorAlugueis;


    constructor(string memory locador, string memory locatario, uint256 _valorAlugueis){
        _locador = locador;
        _locatario = locatario;

          for (uint i = 0; i < 36; i++) {
            valorAlugueis[i] = _valorAlugueis;
        }
    }

    function valorAluguel(uint256 mes) public view returns (uint256) {
        return valorAlugueis[mes - 1];
    }

    function nomes() public view returns (string memory, string memory) {
        return (_locador, _locatario);
    }

    function alterar(uint8 tipoPessoa, string memory novoNome) public {
        if (tipoPessoa == 1) {
            _locador = novoNome;
        } else if (tipoPessoa == 2) {
            _locatario = novoNome;
        }
    }

    function reajustaAluguel(uint256 mesInicio, uint256 valorReajuste) public {
        for (uint i = mesInicio - 1; i < 36; i++) {
            valorAlugueis[i] += valorReajuste;
        }
    }
}
 