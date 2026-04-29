(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3763273169649019589400040786131285130977630615234375p566 {+ 1694827564452471 566 (3.32429e+170)}
; 1.3763273169649019589400040786131285130977630615234375p566 | == 1.3763273169649019589400040786131285130977630615234375p566
; [HW: 1.3763273169649019589400040786131285130977630615234375p566] 

; mpf : + 1694827564452471 566
; mpfd: + 1694827564452471 566 (3.32429e+170) class: Pos. norm. non-zero
; hwf : + 1694827564452471 566 (3.32429e+170) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000110101 #b0110000001010110111111001010111011110100101001110111)))
(assert (= r (fp #b0 #b11000110101 #b0110000001010110111111001010111011110100101001110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
