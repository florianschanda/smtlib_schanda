(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0057173962681156265119852832867763936519622802734375 552 {- 25748863702615 552 (-1.48263e+166)}
; -1.0057173962681156265119852832867763936519622802734375 552 I == -1.0057173962681156265119852832867763936519622802734375 552
; [HW: -1.0057173962681156265119852832867763936519622802734375 552] 

; mpf : - 25748863702615 552
; mpfd: - 25748863702615 552 (-1.48263e+166) class: Neg. norm. non-zero
; hwf : - 25748863702615 552 (-1.48263e+166) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000100111 #b0000000101110110101100011111110111111101011001010111)))
(assert (= r (fp #b1 #b11000100111 #b0000000101110110101100011111110111111101011001010111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
