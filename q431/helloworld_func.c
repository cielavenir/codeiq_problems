Hello(){printf(__func__);}
World(){puts(__func__);}
main(){
	Hello();
	putchar(sizeof(short)<<sizeof(int));
	World();
}