(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.2823539541788664397614638801314868032932281494140625p86 {- 1271609162826529 86 (-9.92173e+025)}
; +zero < -1.2823539541788664397614638801314868032932281494140625p86 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10001010101 #b0100100001001000010110010100011100011000001100100001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
