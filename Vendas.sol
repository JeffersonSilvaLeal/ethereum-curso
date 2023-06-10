// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract VendaBonus {

    string public vendedor;
    uint256 public bonus;

     constructor(string memory vendedor1, uint256 bonus1) {
         vendedor = vendedor1;
         bonus = bonus1;
     }

function setBonus(uint256 _bonus)public {
    bonus = _bonus;
}


function setVendedor(string memory _nome) public {
    vendedor = _nome;
}


    function calcular(uint256 _venda) public view  returns (uint256){
        return _venda * bonus;
    }

}
//0xddb52b1f25f93f2dCe38d65393E6e27389223332
