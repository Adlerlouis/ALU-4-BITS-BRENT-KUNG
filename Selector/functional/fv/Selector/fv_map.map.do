
//input ports
add mapped point a[3] a[3] -type PI PI
add mapped point a[2] a[2] -type PI PI
add mapped point a[1] a[1] -type PI PI
add mapped point a[0] a[0] -type PI PI
add mapped point b[3] b[3] -type PI PI
add mapped point b[2] b[2] -type PI PI
add mapped point b[1] b[1] -type PI PI
add mapped point b[0] b[0] -type PI PI
add mapped point cin cin -type PI PI
add mapped point sel[1] sel[1] -type PI PI
add mapped point sel[0] sel[0] -type PI PI

//output ports
add mapped point result[3] result[3] -type PO PO
add mapped point result[2] result[2] -type PO PO
add mapped point result[1] result[1] -type PO PO
add mapped point result[0] result[0] -type PO PO
add mapped point carry_out carry_out -type PO PO

//inout ports




//Sequential Pins



//Black Boxes
add mapped point gen_halfadders[0].HA gen_halfadders[0].HA -type BBOX BBOX
add mapped point gen_halfadders[1].HA gen_halfadders[1].HA -type BBOX BBOX
add mapped point gen_halfadders[2].HA gen_halfadders[2].HA -type BBOX BBOX
add mapped point gen_halfadders[3].HA gen_halfadders[3].HA -type BBOX BBOX
add mapped point sumador sumador -type BBOX BBOX



//Empty Modules as Blackboxes
