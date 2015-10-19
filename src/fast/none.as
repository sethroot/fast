package fast {
  import fast.any;
  import fast.ap;
  import fast.compose;
  import fast.ops;

  /**
   * Returns true if all elements of the list are 'falsy',
   * otherwise returns false
   */
  public var none:Function = compose([ops.not, [ap, any]]);
}