package fast {
  /**
   * Alternative to Array.map that allows classical functional techniques
   *
   * The benefits of this function are twofold:
   *
   * 1) The ordering of the arguments allows us to use it with compose and
   *    other higher order functions in the standard style.
   *
   * 2) Unlike Array.map, this function produces a new Array instance.
   *
   */
	public function map(f:Function, xs:Array):Array {
    var out:Array = [];
    var i:uint = 0;
    for (i; i<xs.length; i++) {
        out[i] = f(xs[i]);
    }
    return out;
  }
}
