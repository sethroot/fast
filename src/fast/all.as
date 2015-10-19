package fast {
  import fast.ops;
  import fast.partial;
  import fast.reduce;

  /**
   * Returns true if all elements of the list are 'truthy',
   * otherwise returns false
   */
  public var all:Function = partial(reduce, ops.and, true);
}
