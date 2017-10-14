#include <stdio.h>

int main(){
    int in, vv;
    scanf("%d",&in );

    if( in < 100 ) vv = 0;
    else if( 100 <= in && in <= 5000 )    vv = in /100;
    else if( 6000 <= in && in <= 30000 )  vv = in /1000 + 50;
    else if( 35000 <= in && in <= 70000 ) vv = ( in /1000 - 30 ) / 5 + 80;
    else if( 70000 <= in ) vv = 89;

    printf( "%d\n", vv ); 

}