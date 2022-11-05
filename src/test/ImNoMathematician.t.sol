// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import "./base/BaseTest.t.sol";
import {ImNoMathematician} from "../main/ChallengeTwo/ImNoMathematician.sol";


contract ImNoMathematicianTest is BaseTest {

	ImNoMathematician private underTest;

	function setUp() public {
		underTest = new ImNoMathematician();
	}

	function test_getVRR_thenShouldSucceed() external {
		assertEq(underTest.getVRR(0.90 ether), 20000);
		assertEq(underTest.getVRR(0.95 ether), 20000);
		assertEq(underTest.getVRR(0.96 ether), 20000);
		assertEq(underTest.getVRR(0.97 ether), 20000);
		assertEq(underTest.getVRR(0.975 ether), 19995);
		assertEq(underTest.getVRR(0.98 ether), 19933);
		assertEq(underTest.getVRR(0.985 ether), 19214);
		assertEq(underTest.getVRR(0.99 ether), 13962);
		assertEq(underTest.getVRR(0.995 ether), 6629);

		assertEq(underTest.getVRR(1 ether), 5149);

		assertEq(underTest.getVRR(1.01 ether), 5002);
		assertEq(underTest.getVRR(1.015 ether), 5001);
		assertEq(underTest.getVRR(1.02 ether), 5001);
		assertEq(underTest.getVRR(1.025 ether), 5001);
		assertEq(underTest.getVRR(1.03 ether), 5001);
		assertEq(underTest.getVRR(1.035 ether), 5001);
		assertEq(underTest.getVRR(1.04 ether), 5001);
		assertEq(underTest.getVRR(1.10 ether), 5000);
	}
}
