package fast {
  /**
   * Apply a function to an argument list
   */
  public function ap(f:Function, ...rest):* {
    return f.apply(null, rest);
  }
}
