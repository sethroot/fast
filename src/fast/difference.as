package fast {
  import fast.ops;
  import fast.partial;
  import fast.reduce;

  /**
   * Reduce a list with subtraction.
   *
   * Because the subtraction operator does not have an identity,
   * you must provide the initial value
   *
   * difference(10, [3,2,1])
   * => 4
   */
	public var difference:Function = partial(reduce, ops.subtract);
}
