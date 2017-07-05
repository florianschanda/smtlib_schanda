(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.38557405793154320150506464415229856967926025390625 480 {+ 1736471183624228 480 (4.32541e+144)}
; 1.38557405793154320150506464415229856967926025390625 480 I == 1.38557405793154320150506464415229856967926025390625 480
; [HW: 1.38557405793154320150506464415229856967926025390625 480] 

; mpf : + 1736471183624228 480
; mpfd: + 1736471183624228 480 (4.32541e+144) class: Pos. norm. non-zero
; hwf : + 1736471183624228 480 (4.32541e+144) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111011111 #b0110001010110100111110110100000100000000100000100100)))
(assert (= r (fp #b0 #b10111011111 #b0110001010110100111110110100000100000000100000100100)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
