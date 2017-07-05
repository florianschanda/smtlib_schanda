(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7991664672387133183661944713094271719455718994140625p808 {- 3599125804063265 808 (-3.0712e+243)}
; Y = -1.0233468320090943759481660890742205083370208740234375p-161 {- 105144783936439 -161 (-3.50101e-049)}
; -1.7991664672387133183661944713094271719455718994140625p808 < -1.0233468320090943759481660890742205083370208740234375p-161 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100111 #b1100110010010110001011000111000011011001101000100001)))
(assert (= y (fp #b1 #b01101011110 #b0000010111111010000011101101011111110001101110110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
