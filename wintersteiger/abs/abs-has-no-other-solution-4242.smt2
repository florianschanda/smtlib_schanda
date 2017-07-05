(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.60103058484761984203714746399782598018646240234375p202 {+ 2706801117958012 202 (1.0291e+061)}
; 1.60103058484761984203714746399782598018646240234375p202 | == 1.60103058484761984203714746399782598018646240234375p202
; [HW: 1.60103058484761984203714746399782598018646240234375p202] 

; mpf : + 2706801117958012 202
; mpfd: + 2706801117958012 202 (1.0291e+061) class: Pos. norm. non-zero
; hwf : + 2706801117958012 202 (1.0291e+061) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011001001 #b1001100111011101001000111111000111010000111101111100)))
(assert (= r (fp #b0 #b10011001001 #b1001100111011101001000111111000111010000111101111100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
