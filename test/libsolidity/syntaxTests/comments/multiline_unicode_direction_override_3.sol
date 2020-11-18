contract C {
    function f() public pure
    {
        // push 1
        /*overflow ‮*/
    }
}
// ----
// ParserError 8936: (74-89): Mismatching directional override markers in comment.
