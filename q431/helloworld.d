#!/usr/bin/rdmd
import core.stdc.stdio: putchar;
int i00,i01;

int main(){
    i01++;
    int i02=i01+i01;
    int i04=i02+i02;
    int i08=i04+i04;
    int i10=i08+i08;
    int i20=i10+i10;
    int i40=i20+i20;
    putchar(i40+i08);
    putchar(i40+i20+i04+i01);
    putchar(i40+i20+i08+i04);
    putchar(i40+i20+i08+i04);
    putchar(i40+i20+i08+i04+i02+i01);
    putchar(i20);
    putchar(i40+i10+i04+i02+i01);
    putchar(i40+i20+i08+i04+i02+i01);
    putchar(i40+i20+i10+i02);
    putchar(i40+i20+i08+i04);
    putchar(i40+i20+i04);
    putchar(i08+i02);
    return i00;
}