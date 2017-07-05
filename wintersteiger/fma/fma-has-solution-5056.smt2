(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.515829301022304065327261923812329769134521484375p791 {+ 2323088647870832 791 (1.97414e+238)}
; Y = 1.0084918981175625685153818267281167209148406982421875p630 {+ 38244109197923 630 (4.49334e+189)}
; Z = -1.0049219391380661559054487952380441129207611083984375p26 {- 22166443268135 26 (-6.74392e+007)}
; 1.515829301022304065327261923812329769134521484375p791 x 1.0084918981175625685153818267281167209148406982421875p630 -1.0049219391380661559054487952380441129207611083984375p26 == 1.9999999999999997779553950749686919152736663818359375p1023
; [HW: 1.9999999999999997779553950749686919152736663818359375p1023] 

; mpf : + 4503599627370495 1023
; mpfd: + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero
; hwf : + 4503599627370495 1023 (1.79769e+308) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100010110 #b1000010000001101011000111001101000110101100101110000)))
(assert (= y (fp #b0 #b11001110101 #b0000001000101100100001100110100010110010001001100011)))
(assert (= z (fp #b1 #b10000011001 #b0000000101000010100100000110111110100001100000100111)))
(assert (= r (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
