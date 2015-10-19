package fast {
  import fast.ops;
  import fast.partial;
  import fast.reduce;
  
  /**
   * Reduce a list with multiplication.
   *
   * product([1,2,3])
   * => 6
   */
  public var product:Function = partial(reduce, ops.multiply, 1);
}