use std::io::Write;
fn main(){
	let x=[true];
	let szero:u8=x.len() as u8;
	let sone:u8=szero<<szero;
	let stwo:u8=szero<<(szero+szero);
	let sthree:u8=szero<<(szero+szero+szero);
	let sfour:u8=szero<<(szero+szero+szero+szero);
	let sfive:u8=szero<<(szero+szero+szero+szero+szero);
	let ssix:u8=szero<<(szero+szero+szero+szero+szero+szero);
	std::io::stdout().write(&[
		ssix|sthree,
		ssix|sfive|stwo|szero,
		ssix|sfive|sthree|stwo,
		ssix|sfive|sthree|stwo,
		ssix|sfive|sthree|stwo|sone|szero,
		sfive,
		ssix|sfour|stwo|sone|szero,
		ssix|sfive|sthree|stwo|sone|szero,
		ssix|sfive|sfour|sone,
		ssix|sfive|sthree|stwo,
		ssix|sfive|stwo,
		sthree|sone,
	]);
}