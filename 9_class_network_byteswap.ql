import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists(MacroInvocation m |
        m.getMacroName().regexpMatch("ntoh(s|l|ll)") and
        this = m
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 
