(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6316554939408522972854598265257664024829864501953125p658 {- 2844723447138549 658 (-1.95149e+198)}
; -1.6316554939408522972854598265257664024829864501953125p658 | == 1.6316554939408522972854598265257664024829864501953125p658
; [HW: 1.6316554939408522972854598265257664024829864501953125p658] 

; mpf : + 2844723447138549 658
; mpfd: + 2844723447138549 658 (1.95149e+198) class: Pos. norm. non-zero
; hwf : + 2844723447138549 658 (1.95149e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010010001 #b1010000110110100001011001010100011010000100011110101)))
(assert (= r (fp #b0 #b11010010001 #b1010000110110100001011001010100011010000100011110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
