package fast {
  import fast.ops;
  import fast.partial;
  import fast.reduce;

  /**
   * Reduce a list with addition.
   *
   * sum([1,2,3])
   * => 6
   */
  public var sum:Function = partial(reduce, ops.add, 0);
}
