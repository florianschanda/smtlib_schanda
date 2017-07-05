(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0842677967056950638635726136271841824054718017578125p575 {+ 379508417843101 575 (1.34086e+173)}
; Y = +zero {+ 0 -1023 (0)}
; 1.0842677967056950638635726136271841824054718017578125p575 < +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111110 #b0001010110010010100100110000011011110100111110011101)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
