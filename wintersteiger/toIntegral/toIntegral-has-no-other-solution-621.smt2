(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5869987007310164539575225717271678149700164794921875 492 {+ 2643607129879171 492 (2.02924e+148)}
; 1.5869987007310164539575225717271678149700164794921875 492 I == 1.5869987007310164539575225717271678149700164794921875 492
; [HW: 1.5869987007310164539575225717271678149700164794921875 492] 

; mpf : + 2643607129879171 492
; mpfd: + 2643607129879171 492 (2.02924e+148) class: Pos. norm. non-zero
; hwf : + 2643607129879171 492 (2.02924e+148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111101011 #b1001011001000101100010111111111001101111001010000011)))
(assert (= r (fp #b0 #b10111101011 #b1001011001000101100010111111111001101111001010000011)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
