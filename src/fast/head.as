package fast {
  /**
   * Returns the first element of a list
   */
  public function head(xs:Array):* {
    return xs.length > 0 ? xs[0] : null;
  }
}
