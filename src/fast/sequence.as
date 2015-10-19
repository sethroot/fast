package fast {
  import fast.partial;

  /**
   * Sequences a vector of functions that accept a continuation as the last
   * argument. This allows the sequencing of asynchronous functions without
   * building the 'pyramid of doom' of nested lambda functions.
   *
   * Can be used with fast.partial to apply arguments leading up to
   * the continuation argument.
   *
   * 'Callback hell':
   * a(function():void {
   *   b(arg1, arg2, function():void {
   *     c(function():void {
   *     });
   *   });
   * });
   *
   * Sequenced:
   * fast.sequence(new <Function>[
   *   a, partial(b, arg1, arg2), c
   * ])
   *
   * See fast.liftSequence for sequencing functions that do not
   * accept a continuation argument.
   */
  public function sequence(v:Vector.<Function>):void {
    v.length && v.shift()(partial(sequence, v));
  }
}
