(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3259937319606944772232282048207707703113555908203125p533 {+ 1468145249783301 533 (3.72846e+160)}
; 1.3259937319606944772232282048207707703113555908203125p533 | == 1.3259937319606944772232282048207707703113555908203125p533
; [HW: 1.3259937319606944772232282048207707703113555908203125p533] 

; mpf : + 1468145249783301 533
; mpfd: + 1468145249783301 533 (3.72846e+160) class: Pos. norm. non-zero
; hwf : + 1468145249783301 533 (3.72846e+160) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000010100 #b0101001101110100010100110100000101111000111000000101)))
(assert (= r (fp #b0 #b11000010100 #b0101001101110100010100110100000101111000111000000101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
