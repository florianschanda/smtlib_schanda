(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.51051365497428502493448831955902278423309326171875p926 {+ 2299149106309740 926 (8.56842e+278)}
; Y = 1.4066116127392727097600300112389959394931793212890625p-390 {+ 1831215907617105 -390 (5.57797e-118)}
; 1.51051365497428502493448831955902278423309326171875p926 > 1.4066116127392727097600300112389959394931793212890625p-390 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110011101 #b1000001010110001000001011101110001000110101001101100)))
(assert (= y (fp #b0 #b01001111001 #b0110100000010111101100101101101011100011100101010001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
