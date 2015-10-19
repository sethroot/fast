package fast {
  import fast.ops;

  /**
   * Produces a list of integers of a given length
   *
   * Can be used with the fast.ops operators to enable ascend/descend/flat.
   * Uses fast.ops.add by default.
   *
   * range(5);
   * => [0,1,2,3,4]
   *
   * range(5, 10);
   * => [10,11,12,13,14]
   *
   * range(5, 10, 2);
   * => [10,12,14,16,18]
   *
   * range(5, 10, 1, fast.ops.subtract);
   * => [10,9,8,7,6]
   *
   * range(5, 0, 0, fast.ops.fst);
   * => [0,0,0,0,0]
   *
   * range(-1);
   * => []
   */
  public function range(length:int, init:Number = 0, step:Number = 1, operator:Function = null):Array {
    if (length <= 0) return [];
    var out:Array = [init];
    operator = operator || ops.add
    var i:int = 0;
    for(i;i<length - 1;i++) {
      init = operator(init,step)
      out.push(init);
    }
    return out;
  }
}
