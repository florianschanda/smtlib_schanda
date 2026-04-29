(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.483132369817337092854359070770442485809326171875p718 {- 2175834760679984 718 (-2.04511e+216)}
; +zero > -1.483132369817337092854359070770442485809326171875p718 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11011001101 #b0111101110101110100100000010000000000001001000110000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
