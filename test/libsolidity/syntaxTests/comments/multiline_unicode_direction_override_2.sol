contract C {
    function f() public pure
    {
        // pop 2
        /*underflow ‬‬*/
    }
}
// ----
// ParserError 8936: (73-88): Unicode direction override underflow in comment.
