(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9673892992120636247221909798099659383296966552734375p863 {+ 4356734087453655 863 (1.20998e+260)}
; Y = 1.372620782466145161748727332451380789279937744140625p-789 {+ 1678134817065034 -789 (4.21584e-238)}
; 1.9673892992120636247221909798099659383296966552734375p863 < 1.372620782466145161748727332451380789279937744140625p-789 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101011110 #b1111011110100110110100110011101010011101101111010111)))
(assert (= y (fp #b0 #b00011101010 #b0101111101100100000100110101101010000000100001001010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
