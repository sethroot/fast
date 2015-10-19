package fast {
	/**
   * Lifts a non-sequencable function into a sequencable function
   * 
   * // accepts and invokes continuation
   * var f:Function = function(cont:Function = null):void {
   *   if (cont != null) cont();
   * }
   *
   * // does not accept continuation argument
   * var g:Function = function():void {}
   *
   * // accepts and invokes continuation
   * var h:Function = f;
   *
   * sequence(new <Function>[f, liftSequence(g), h]);
   */
  public function liftSequence(f:Function, ...args):Function {
    return function(cont:Function = null):void {
      f.apply(null, args);
      if (cont != null) cont();
    };
  }
}
