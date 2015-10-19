package fast {
  import fast.ops;
  import fast.partial;
  import fast.reduce;

  /** 
   * Returns true if any elements of the list are 'truthy',
   * otherwise returns false
   */
  public var any:Function = partial(reduce, ops.or, false);
}
