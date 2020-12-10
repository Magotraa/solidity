pragma experimental SMTChecker;

contract C {
	function f(bytes calldata b) external pure {
		require(b[10] == 0xff);
		assert(bytes(b[10:20]).length == 10);
		assert(bytes(b[10:20])[0] == 0xff);
		// Disabled because of Spacer nondeterminism
		//assert(bytes(b[10:20])[5] == 0xff);
	}
}
// ----
// Warning 6328: (160-194): CHC: Assertion violation might happen here.
// Warning 4661: (160-194): BMC: Assertion violation happens here.
