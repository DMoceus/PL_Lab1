#include <stdio.h>

  char a1 = one ; // <<< Lexical Error (one has not been loaded into the symbol table and doesn't exist at this time)
  int arr[10];
  long fr; nx; // <<< Static Semantic ("nx" is not given a type at compile time)
  long a; 123abc; // <<< Lexical Error (Compiler reads "123", assumes it's an int, then finds error with "abc" on an int)
  int flag =0;

  int chg(char * f)  {
        if (f = 0) {  //<<< Logical Error (Always Yields True)
            int x = 10;  
            arr[10] = 1; //<<< Dynamic Semantic (Array out of Bounds)
        } else {
            arr[flag] = 1;
        }
        x = ++flag ;  //<<< Static Semantic (x, declared in line 11, is out of scope for this line)
        return flag;
  }
  int main (void){
      char one ='1'; 
      int restrict = flag++ ; // <<< Syntax Error (Type Identifier + Keyword is not a valid variable declaration)
      a = "abcd"; // <<< Static Semantic (Assigning a char* to a long is not defined functionality)
      printf("Begin:: ");
      chg(a);
      if (restrict) return 0; else return 100; // <<< Syntax Error (Syntax Error in line 21 causes this line to not compile correctly)
    }

