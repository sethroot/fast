# fast
The Functional ActionScript Toolkit

##Function

###partial
```
import fast.ops;

var increment = partial(ops.add, 1);
increment(1);
=> 2

var powerOf2 = partial(Math.pow, 2);
powerOf2(3);
=> 8
```

###compose
```
import fast.flip;
import fast.ops;
import fast.partial;

var increment = partial(ops.add, 1);
var invert = partial(ops.multiply, -1);
var halve = partial(flip(ops.divide), 2);

compose([halve, invert, increment])(9);
=> -5

// Same as above, using shorthand syntax for partials
compose([flip(ops.divide), 2],
        [ops.multiply, -1],
        [ops.add, 1])(9);
=> -5
```

###sequence
```
import fast.partial;

var a = function(cont:Function = null):void {
  /* function body */
  if (cont != null) cont();
};

var b = function(arg1:*, arg2:*, cont:Function = null):void {
  /* function body */
  if (cont != null) cont();
};

var c = a;

// Use with partial to apply args up until continuation
sequence(new <Function>[a, partial(b, arg1, arg2), c]);
```

###liftSequence
```
import fast.sequence;

var a = function(cont:Function = null):void {
  /* function body */
  if (cont != null) cont();
};

var b = function():void {
  /* function body */
};

var c = a;

sequence(new <Function>[a, liftSequence(b), c]);
```

###flip
```
import fast.ops;

flip(ops.divide)(2, 10);
=> 5
```

###ap
```
ap(Math.max, 3, 7)
=> 7
```

###identity
```
identity("make it fast!");
=> "make it fast!"

identity(1);
=> 1

identity(true);
=> true

identity(new Object());
=> Object (@<address>)

identity(identity);
=> Function (@<address>)
```

##Array

###head
```
head([]);
=> null

head([1,2,3]);
=> 1
```

###tail
```
tail([]);
=> []

tail([1,2,3]);
=> [2,3]
```

###map
```
import fast.ops;
import fast.partial;

map(partial(ops.add, 1), [1,2,3]);
=> [2,3,4]
```

###reduce
```
import fast.ops;

reduce(ops.add, 0, [1,2,3]);
=> 6
```

###range
```
import fast.ops;

range(5);
=> [0,1,2,3,4]

range(5, 10);
=> [10,11,12,13,14]

range(5, 10, 2);
=> [10,12,14,16,18]

range(5, 10, 1, fast.ops.subtract);
=> [10,9,8,7,6]

range(5, 0, 0, fast.ops.fst);
=> [0,0,0,0,0]

range(-1);
=> []
```

###sum
```
sum([1,2,3])
=> 6
```

###difference
```
difference(10, [5,2]);
=> 3

difference(-10, [5,2]);
=> -17
```

###product
```
product([2,5,10])
=> 100
```

###quotient
```
quotient(100, [2,2,5])
=> 5
```

###max
```
max(10, [-30,42,0]);
=> 42

max(0, [-50,-7,-20]);
=> 0
```

###min
```
min(10, [-30,42,0]);
=> -30

min(0, [-50,-7,-20]);
=> -50
```

## Boolean

###any
```
any([]);
=> false

any([true, true]);
=> true

any([true, false]);
=> true

any([false, false]);
=> false
```

###all
```
all([]);
=> true

all([true, true]);
=> true

all([true, false]);
=> false
```

###none
```
none([]);
=> true

none([false, false]);
=> true

none([false, true]);
=> false

none([false, true]);
=> false
```

##Operators

###fst
```
fst(1, 2);
=> 1
```

###snd
```
snd(1, 2);
=> 2
```

###add
```
add(1, 2);
=> 3
```

###subtract
```
subtract(1, 2);
=> -1
```

###multiply
```
multiply(1, 2);
=> 2
```

###divide
```
divide(1, 2);
=> .5
```

###and
```
and(true, false);
=> false
```

###or
```
or(true, false);
=> true
```

###not
```
not(true);
=> false
```
