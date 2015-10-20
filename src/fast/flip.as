package fast {
  /**
   * Reverse the order of the arguments of a Function
   *
   * f(a, b, c) == flip(f)(c,b,a);
   *
   * Use with fast.partial to flip a subset of a function's
   * arguments
   * 
   * f(a, b, c) == flip(partial(f, a))(c, b)
   */
  public function flip(f:Function):Function {
    return function(...args):* {
      return f.apply(null,  args.reverse());
    };
  }
}
