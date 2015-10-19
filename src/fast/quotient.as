package fast {
  import fast.ops;
  import fast.partial;
  import fast.reduce;

  /**
   * Reduce a list with division.
   *
   * Because the division operator does not have an identity,
   * you must provide the initial value
   *
   * difference(12, [4,2])
   * => 2
   */
  public var quotient:Function = partial(reduce, ops.divide);
}
