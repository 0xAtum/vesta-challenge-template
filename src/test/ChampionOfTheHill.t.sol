// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import {BaseTest, console} from "./base/BaseTest.t.sol";
import {ChampionOfTheHill} from "../main/ChallengeOne/ChampionOfTheHill.sol";

contract ChampionOfTheHillTest is BaseTest {
    address private owner = generateAddress("Owner", false);
    address private userA = generateAddress("UserA", false);
    address private userB = generateAddress("UserB", false);
    address private mockTicketCoin = generateAddress("MockTicketCoin", true);

    ChampionOfTheHill private underTest;

    function setUp() external {
        underTest = new ChampionOfTheHill(mockTicketCoin);
    }

    function testSomething() external {
        /*
    If you are new with foundry. your function has to start with "test" and be accessible externally.
    Otherwise, the system won't read it.

    Here's the Foundry Book: https://book.getfoundry.sh/ if needed.
        */
    }

    /*
    TODO : Do your test, you should have a coverage of 95%+

    You can't create a TicketCoin contract here, it should be mocked.
    With foundry you have two ways of doing it. Chose the one that you think is a better fit.
    vm.mockCall - https://book.getfoundry.sh/cheatcodes/mock-call?highlight=mock#description
    vm.expectCall - https://book.getfoundry.sh/cheatcodes/expect-call?highlight=expectCall#expectcall
    */
}
