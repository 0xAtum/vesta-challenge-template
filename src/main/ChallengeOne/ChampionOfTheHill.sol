pragma solidity >= 0.8.0;

import {TicketCoin} from "../TicketCoin.sol";

contract ChampionOfTheHill {
    TicketCoin private ticket;

    constructor(address _ticketCoin) {
        ticket = TicketCoin(_ticketCoin);
    }

    function becomeTheChampion( /* Add Parameters If needed*/ ) external {
        //TODO
    }

    function claim( /* Add Parameters If needed*/ ) external {
        //TODO
    }

    function pushBackTimer( /* Add Parameters If needed*/ ) external {
        //TODO
    }
}
