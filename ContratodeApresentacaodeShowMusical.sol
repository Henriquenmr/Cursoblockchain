// SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.4;

contract ApresentacaodeShowMusical {
    
    string public Contratante;
    string public Contratado;
    string public LocaldaApresentacao;
    uint public NumeroMinimodeEspectadores;
    uint private NumeroMaximodeMusicas;
    address public owner;
    
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
        owner = msg.sender;
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
    
     modifier AdicionarMusicasaoRepertorio {
        require(msg.sender == owner, "Apenas o owner pode adicionar musicas ao repertorio");
        _;
    }
}
