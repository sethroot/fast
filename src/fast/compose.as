package fast {
  import fast.head;
  import fast.tail;

  /**
   * Special form of function composition that accepts a list of Functions,
   * with the option that some can be paired with arguments.
   *
   * This syntax allows us to mimic languages that allow infix composition
   * operators like Haskell, while avoiding the need to rely on the use of
   * partial application.
   *
   * As an example, let's assume we have 3 functions: F, G, and H
   * and we want to feed an extra argument 'arg' to G
   * and we want to apply the final composed function to some value 'x'
   * 
   * Traditional AS3 function application with mixed arity:
   * result = H(G(arg, F(x)))
   * 
   * Using fast.compose:
   * result = compose([H, [G, arg], F])(x)
   *
   * For comparison, in Haskell:
   * result = H . (G arg) . F $ x
   */
  public function compose(xs:Array):Function {
    return function(input:*):* {
      var out:* = input;

      var f:Function;
      var args:Array;
      var iteratee:*;
      var i:int = xs.length - 1;
      for(i; i>-1; i--) {
        iteratee = xs[i];
        if (iteratee is Array) {
          f = head(iteratee as Array) as Function;
          args = tail(iteratee as Array) as Array;
        } else {
          f = iteratee;
          args = [];
        }

        out = f.apply(null, args.concat([out]));
      }

      return out;
    };
  }
}
