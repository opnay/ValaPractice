# Comments

``` vala
/**
 * Documentation Comment
 */

/* Comment lasts between delimiters */

// Comment continues until end of line
```

# Data types
## Value types
| Category                | Type                                    |
| ----------------------- | --------------------------------------- |
| Byte                    | char, uchar                             |
| Charactor               | unichar                                 |
| Integer                 | int, uint                               |
| Long Integer            | long, ulong                             |
| Short Integer           | short, ushort                           |
| Guaranteed-size Integer | int8, int16, int32, int64(include uint) |
| Float Number            | float, double                           |
| Boolean                 | bool                                    |
| compound                | struct                                  |
| Enumeration             | enum                                    |

- Boolean: true / false
- Enumeration: Represented by integer values, not as classes like Java's enums

## Strings
``` vala
string text = "A string literal";

string verbatim = """ This is a so-called "verbatim string".
Verbatim string don't process excape sequences, such as \n, \t, \\ etc...""";
```

### Template
``` vala
int a = 6, b = 7;
string s = @"$a * $b = $(a * b)";
// => 6 * 7 = 42
```

### Slice
``` vala
string greeting = "hello, world";
string s1 = greeting[7:12];
// => world
string s2 = greeting[-4:-2];
// => or

uint8 b = greeting[7];
// => 0x77 (That is ASCII code of 'w')
```

### Parse
``` vala
bool b = bool.parse("false");           // => false
int i = int.parse("-52");               // => -52
double d = double.parse("6.67428E-11"); // => 6.67428E-11
string s1 = true.to_string();           // => "true"
string s2 = 21.to_string();             // => "21"

stdout.printf("Hello, World!\n");
stdout.printf("%d %g %s\n", 42, 3.1415, "Vala");    // => 42 3.1415 Vala
string input = stdin.read_line();           // 123a => 123a
int number = int.parse(stdin.read_line());  // 123a => 123
```

## Arrays
```vala
int[] a = new int[10];
int[] b = { 2, 4, 6, 8 };
```

### Slice
``` vala
int[] c = b[1:3];   // => { 4, 6 }
```
``` vala
// Don't copy to "c"
unowned int[] c = b[1:3];   // => { 4, 6 }
```

### Multi-dimensional
``` vala
int[,] c = new int[3,4];
int[,] d = {{2, 4, 6, 8},
            {3, 5, 7, 9},
            {1, 3, 5, 7}};
d[2,3] = 42;
```

### Operator
``` vala
// Append array
int[] e = {};
e += 12;
e += 5;
e += 37;
```

### Resize
``` vala
int[] a = new int[5];
a.resize(12);
```

### Move
``` vala
uint8[] chars = "hello world".data;
chars.move (6, 0, 5);
print ((string) chars); // "world "
```
