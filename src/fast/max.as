package fast {
  import fast.partial;
  import fast.reduce;

  /**
   * Reduce a list with Math.max.
   *
   * Because the max operator does not have an identity,
   * you must provide the initial value
   *
   * max(10, [-30,42,0]);
   * => 42
   * 
   * max(0, [-50, -7, -20]);
   * => -7
   */
  public var max:Function = partial(reduce, Math.max);
}
