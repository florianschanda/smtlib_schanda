(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.12675892164371393988631098181940615177154541015625p54 {- 570871432280516 54 (-2.02979e+016)}
; -1.12675892164371393988631098181940615177154541015625p54 | == 1.12675892164371393988631098181940615177154541015625p54
; [HW: 1.12675892164371393988631098181940615177154541015625p54] 

; mpf : + 570871432280516 54
; mpfd: + 570871432280516 54 (2.02979e+016) class: Pos. norm. non-zero
; hwf : + 570871432280516 54 (2.02979e+016) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110101 #b0010000001110011010001011100111011101111100111000100)))
(assert (= r (fp #b0 #b10000110101 #b0010000001110011010001011100111011101111100111000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
