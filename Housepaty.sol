// SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.4;

contract HouseParty {
    
    string public anfitriao;
    string public localdafesta;
    string public ID;
    uint public ValorIngresso;
    uint private NumeroMaximodeParticipantes;
    
    constructor() {
        anfitriao = "Tony";
        localdafesta = "AvenidaDomPedro616,Paraiso,SaoPaulo";
        ValorIngresso = 50;
        ID = "CPFouRG";
        NumeroMaximodeParticipantes = 6;
        Lotes[1] = "Vip";
        Lotes[2] = "Amigos Proximos";
        Lotes[3] = "Colegas do Trabalho";
    }
    
    struct Participantes {
        string nome;
        string ID;
    }

    mapping (uint => string) public Lotes;
    
    event AdquirIngresso (string Participantes);
    
    modifier verificarNumerodeIngressosDisponiveis {
        require(msg.value <= NumeroMaximodeParticipantes, "Numero maximo de participantes atingido");
        _;
    }
}
