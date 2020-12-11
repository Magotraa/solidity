pragma abicoder v2;

contract C {
    function f(bytes calldata c1, uint256 s, uint256 e, bytes calldata c2) public returns (bool) {
        return keccak256(c1[s:e]) == keccak256(c2);
    }
}
// ====
// compileViaYul: also
// ----
// f(bytes, uint256, uint256, bytes): 0x80, 1, 5, 0xC0, 8, "abcdefgh", 4, "bcde" -> true
// f(bytes, uint256, uint256, bytes): 0x80, 1, 5, 0xC0, 8, "abcdefgh", 4, "bcdf" -> false
