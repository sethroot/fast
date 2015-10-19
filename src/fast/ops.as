package fast {
  /**
   * A collection of operators for use with higher order functions.
   */
  public class ops {
    public static function fst(a:*, b:*):* {
      return a;
    }

    public static function snd(a:*, b:*):* {
      return b;
    }

    public static function add(a:Number, b:Number):Number {
      return a + b;
    }

    public static function subtract(a:Number, b:Number):Number {
      return a - b;
    }

    public static function multiply(a:Number, b:Number):Number {
      return a * b;
    }

    public static function divide(a:Number, b:Number):Number {
      return a / b;
    }

    public static function and(a:Boolean, b:Boolean):Boolean {
      return a && b;
    }

    public static function or(a:Boolean, b:Boolean):Boolean {
      return a || b;
    }

    public static function not(a:Boolean):Boolean {
      return !a;
    }
  }
}
