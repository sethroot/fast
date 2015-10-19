package fast {
  import fast.ops;
  import fast.partial;
  import fast.reduce;

  /**
   * Returns true if all elements of the list are 'truthy',
   * otherwise returns false
   */
  public static var all:Function = partial(reduce, ops.and, true);
}
