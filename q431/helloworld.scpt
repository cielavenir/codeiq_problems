copy length of {true} to i01
copy i01+i01 to i02
copy i02+i02 to i04
copy i04+i04 to i08
copy i08+i08 to i10
copy i10+i10 to i20
copy i20+i20 to i40
copy (ASCII character (i40+i08)) to H
copy (ASCII character (i40+i20+i04+i01)) to e
copy (ASCII character (i40+i20+i08+i04)) to l
copy (ASCII character (i40+i20+i08+i04+i02+i01)) to o
copy (ASCII character (i20)) to sp
copy (ASCII character (i40+i10+i04+i02+i01)) to W
copy (ASCII character (i40+i20+i10+i02)) to r
copy (ASCII character (i40+i20+i04)) to d
log H & e & l & l & o & sp & W & o & r & l & d
