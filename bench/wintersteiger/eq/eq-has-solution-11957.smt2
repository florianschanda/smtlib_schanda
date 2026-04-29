(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2114722508047945925824251389713026583194732666015625p-884 {- 952386349923673 -884 (-9.39285e-267)}
; Y = 1.87690923807977672055358198122121393680572509765625p-790 {+ 3949248117853828 -790 (2.88235e-238)}
; -1.2114722508047945925824251389713026583194732666015625p-884 = 1.87690923807977672055358198122121393680572509765625p-790 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010001011 #b0011011000100011000010111010000100110111110101011001)))
(assert (= y (fp #b0 #b00011101001 #b1110000001111101000111111011001100011100111010000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
