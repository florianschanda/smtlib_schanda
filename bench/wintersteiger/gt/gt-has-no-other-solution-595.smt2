(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9262658465232920246279491038876585662364959716796875p-61 {- 4171530521248315 -61 (-8.35385e-019)}
; Y = -1.114640014243049481734715300262905657291412353515625p799 {- 516292725426746 799 (-3.71622e+240)}
; -1.9262658465232920246279491038876585662364959716796875p-61 > -1.114640014243049481734715300262905657291412353515625p799 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111000010 #b1110110100011111110000100010111000111000001000111011)))
(assert (= y (fp #b1 #b11100011110 #b0001110101011001000011000100011111111100101000111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
