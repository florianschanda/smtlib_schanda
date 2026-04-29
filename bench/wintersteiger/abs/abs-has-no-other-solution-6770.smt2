(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6166027651079148963475518030463717877864837646484375p-184 {+ 2776931983175623 -184 (6.59302e-056)}
; 1.6166027651079148963475518030463717877864837646484375p-184 | == 1.6166027651079148963475518030463717877864837646484375p-184
; [HW: 1.6166027651079148963475518030463717877864837646484375p-184] 

; mpf : + 2776931983175623 -184
; mpfd: + 2776931983175623 -184 (6.59302e-056) class: Pos. norm. non-zero
; hwf : + 2776931983175623 -184 (6.59302e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101000111 #b1001110111011001101011011100011011000010111111000111)))
(assert (= r (fp #b0 #b01101000111 #b1001110111011001101011011100011011000010111111000111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
