contract C {
    function f() public pure
    {
        // first pop, then push
        /*overflow ‬‮*/
    }
}
// ----
// ParserError 8936: (88-102): Unicode direction override underflow in comment.
