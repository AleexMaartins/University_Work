//
// Tomás Oliveira e Silva, AED, November 2021
//
// matched-parenthesis verification
//

#include <iostream>
#include "aStack.h"

using std::cout;
using std::cerr;
using std::endl;

int check_parenthesis(const char *s)
{
    aStack<int> S;
   
    for(int i=0;s[i]!='\0';i++)
    {
          if(s[i] =='(')
            S.push(i);
          
          else if (s[i]==')')
          {
            if(S.size() ==0)
          {
            cout << " unmatched ')' at position " << i << endl;
            return -1;
          }
            cout <<"unmatched ')' at position" << i << endl;   
          }
          if(S.size()==0)
            return 0;
            while (S.size()>0)
              cout << "unmatched '(' at position " << S.pop() << endl;
              return -1;
              
    }
    
          //while (!aStack.empty()) {
            //cout << ' ' << aStack.top();
            //aStack.pop();
    //    }
  }
   
  
   //se o array de strings nao for vazio criar uma pilha X
    //ler array da string 1 a 1
    //checkar para parentises
    //guardar indice dos parentises numa lista - push(i)
    //quando encontrar um parentise fechado pop na lista
    //se tiver só ) houve um erro de formaçaco de parenteses
    //se o stack nao esta vazio erro porque nunca fecharam parenteses

  // put your code here (20 lines of code should be enough)


int main(int argc,char **argv)
{
  if(argc == 1)
  {
    cerr << "usage: " << argv[0] << " [arguments...]" << endl;
    cerr << "example: " << argv[0] << " 'abc(def)ghi' 'x)(y'" << endl;
    return 1;
  }
  for(int i = 1;i < argc;i++)
  {
    cout << argv[i] << endl;
    if(check_parenthesis(argv[i]) == 0)
      cout << "  good" << endl;
    else
      cout << "  bad" << endl;
  }
  return 0;
}
