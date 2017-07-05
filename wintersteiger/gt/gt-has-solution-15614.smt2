(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.864963882623574153996059976634569466114044189453125p-34 {+ 3895451019472466 -34 (1.08555e-010)}
; Y = 1.9118671306110603946848414125270210206508636474609375p-847 {+ 4106684469631375 -847 (2.03728e-255)}
; 1.864963882623574153996059976634569466114044189453125p-34 > 1.9118671306110603946848414125270210206508636474609375p-847 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011101 #b1101110101101110010001011110010000010110111001010010)))
(assert (= y (fp #b0 #b00010110000 #b1110100101110000000111111101000001000101100110001111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
