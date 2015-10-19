package fast {
  /**
   * Partially apply a function to a subset of it's arguments
   *
   * var plusOne = partial(fast.ops.add, 1);
   * plusOne(2);
   * => 3
   */
  public function partial(f:Function, ...a):Function {
    return function(...b):* {
      return f.apply(null, a.concat(b));
    };
  }
}
