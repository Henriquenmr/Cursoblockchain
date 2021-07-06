// SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.4;

contract ContratodeApresentacaodeShowMusical {
    
    string public Contratante;
    string public Contratado;
    string public LocaldaApresentacao;
    uint public NumeroMinimodeEspectadores;
    uint private NumeroMaximodeMusicas;
    
    struct RequisitosparaRealizacaodaApresentacao {
        string Contratado;
        uint NumeroMinimodeEspectadores;
    }
    
    mapping (uint => string) public Musicas;
    
    constructor() {
        Contratante = "Henrique";
        Contratado = "Of Monsters and Men";
        LocaldaApresentacao = "Allianz Park";
        NumeroMinimodeEspectadores = 1000;
        NumeroMaximodeMusicas = 15;
        Musicas[1] = "Dirty Paws";
        Musicas[2] = "Alligator";
        Musicas[3] = "Visitor";
        Musicas[4] = "Destroyer";
        Musicas[5] = "Slow and Steady";
        Musicas[6] = "Circles";
        Musicas[7] = "Ahay";
        Musicas[8] = "Vulture, Vulture";
        Musicas[9] = "Stuck in Gravity";
        Musicas[10] = "Under a Dome";
        Musicas[11] = "Thousand Eyes";
        Musicas[12] = "Organs";
        Musicas[13] = "Mountain Sound";
        Musicas[14] = "Wolves Without Teeth";
        Musicas[15] = "Little Talks";
    }
    
    address henriquenmr;
    modifier onlyowner {
        require(henriquenmr == msg.sender);
        _;
    }
    function Token() private {
        henriquenmr = msg.sender;
    }
    
     modifier verificarNumeroMaximodeMusicas {
        require(msg.value <= NumeroMaximodeMusicas, "Repertorio atingiu o seu limite");
        _;
    }
}