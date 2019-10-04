pragma solidity 0.5.12;


contract Aluguel {
    

// é um comando para algo rápido só vale pra 1 linha

/*
é utilizado para textos longos 
*/

    string public locatario;
    
    /* tipos de dados na sintaxe solidity:
    string = "texto" éo texto que vc vai colocar no sistema
    public+ publico
    private= privado
    uint256= numero interio
    address = endereço ethereum
    bool= verdadeiro ou falso
    uint256 constant= é o valor que será constante temho que declarar o valor
    
    indentar= tab antes para organizar
    para atribuir valor a uma variável usa-se o simbolo =
    declarar = é escrever
    REPO = repositório
    
    */
    
    string public locador;
    uint256 private valor;
    uint256 constant multaMaximoAluguelRescisao = 3;
    //quando dá espaço ele acha que vc está falando de outra coisa. entao tem de manter sem espaço
    
    /*
    Funçoes
    sao as clausulas do contrato. os parametros sao como varia´veis mas o valor é definido externamente, ou seja a função recebe umm paramentro.
    o que muda é parametro, nao a função
    a declaração de parametro fica no promeiro par de parenteses ()
    */
    
    constructor( string memory nomeLocador, string memory nomeLocatario, uint256 valorDoAluguel) public {
        locador = nomeLocador;
        locatario = nomeLocatario;
        valor= valorDoAluguel;
    } 
        //quando programar na mesma linha usa vírgula. constructor por regra tem de ser public
    
    function valorAtualDoAluguel() public view returns (uint256) {
        return valor;
        
    }
    function simulaMulta( uint256 mesesRestantes, uint256 totalMesesContrato)
    public
    view
    returns(uint256 valorMulta) {
        
        valorMulta = valor*multaMaximoAluguelRescisao;
        valorMulta = valorMulta/totalMesesContrato;
        valorMulta = valorMulta*mesesRestantes;
        
        return valorMulta;
    }
        
        
        
    }
        



