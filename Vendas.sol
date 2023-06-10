
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract VendaBonus {

    string public vendedor;
    uint256 public bonus;

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
//0xd9145CCE52D386f254917e481eB44e9943F39138
