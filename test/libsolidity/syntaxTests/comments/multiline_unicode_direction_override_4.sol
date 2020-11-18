contract C {
    function f() public pure
    {
        // push 2
        /*overflow ‮‮*/
    }
}
// ----
// ParserError 8936: (74-92): Mismatching directional override markers in comment.
