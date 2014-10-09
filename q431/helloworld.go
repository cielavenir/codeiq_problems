//usr/bin/env go run $0 $@;exit
package main
import(
	"fmt"
)

func main(){
	a:=new([]int)
	i00:=len(*a)
	i01:=i00
	i01++
	i02:=i01+i01
	i04:=i02+i02
	i08:=i04+i04
	i10:=i08+i08
	i20:=i10+i10
	i40:=i20+i20
	s:=make([]byte,i08+i02+i01)
	s[i00]=(byte)(i40+i08)
	s[i01]=(byte)(i40+i20+i04+i01)
	s[i02]=(byte)(i40+i20+i08+i04)
	s[i01+i02]=(byte)(i40+i20+i08+i04)
	s[i04]=(byte)(i40+i20+i08+i04+i02+i01)
	s[i01+i04]=(byte)(i20)
	s[i02+i04]=(byte)(i40+i10+i04+i02+i01)
	s[i01+i02+i04]=(byte)(i40+i20+i08+i04+i02+i01)
	s[i08]=(byte)(i40+i20+i10+i02)
	s[i01+i08]=(byte)(i40+i20+i08+i04)
	s[i02+i08]=(byte)(i40+i20+i04)
	fmt.Println(string(s))
}