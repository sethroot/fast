package fast {
  import fast.partial;
  import fast.reduce;
  
  /**
   * Reduce a list with Math.min.
   *
   * Because the min operator does not have an identity,
   * you must provide the initial value
   *
   * min(10, [-30,42,0]);
   * => 0
   * 
   * min(0, [-50, -7, -20]);
   * => -50
   */
  public var min:Function = partial(reduce, Math.min);
}
