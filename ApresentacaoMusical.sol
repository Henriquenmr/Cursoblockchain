// SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.4;

contract ApresentacaoMusical {
    
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
        Musicas[5] = "Wolves Without Teeth";
        Musicas[6] = "Circles";
        Musicas[7] = "Ahay";
        Musicas[8] = "Little Talks";
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
        require(msg.value <= NumeroMaximodeMusicas, "Repertorio ja esta completo");
        _;
    }
}
