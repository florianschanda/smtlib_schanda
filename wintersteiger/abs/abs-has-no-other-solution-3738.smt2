(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.57865440730662509594139919499866664409637451171875p724 {- 2606027773122412 724 (-1.39317e+218)}
; -1.57865440730662509594139919499866664409637451171875p724 | == 1.57865440730662509594139919499866664409637451171875p724
; [HW: 1.57865440730662509594139919499866664409637451171875p724] 

; mpf : + 2606027773122412 724
; mpfd: + 2606027773122412 724 (1.39317e+218) class: Pos. norm. non-zero
; hwf : + 2606027773122412 724 (1.39317e+218) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010011 #b1001010000100010101100011111101100010001011101101100)))
(assert (= r (fp #b0 #b11011010011 #b1001010000100010101100011111101100010001011101101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
