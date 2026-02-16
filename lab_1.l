%{
    #include <stdio.h>
%}

%%
"int"|"float"|"main"|"char"|"long long"|"double"|"void"|"return"|"for" {
    printf("keywords:%s\n",yytext);
}

"<="|">="|"=="|"/"|"*"|"+"|"=" {
    printf("op : %s\n", yytext);
}

[a-zA-Z_][a-zA-Z_0-9]* {
    printf("keyword : %s\n",yytext);
}

. ;
%%

int yywrap(){
return 1;
}

int main(){
    
    yylex();
    return 0;
}
