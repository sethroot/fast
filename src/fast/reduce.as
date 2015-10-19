package fast {
  /**
   * Standard left fold
   */
  public function reduce(f:Function, init:*, xs:Array):* {
    var x:* = init;
    for (var i:int=0; i<xs.length; i++) {
      x = f(x, xs[i]);
    }
    return x;
  }
}
