(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.526217986656962732894271539407782256603240966796875p-219 {+ 2369875128623950 -219 (1.81154e-066)}
; 1.526217986656962732894271539407782256603240966796875p-219 | == 1.526217986656962732894271539407782256603240966796875p-219
; [HW: 1.526217986656962732894271539407782256603240966796875p-219] 

; mpf : + 2369875128623950 -219
; mpfd: + 2369875128623950 -219 (1.81154e-066) class: Pos. norm. non-zero
; hwf : + 2369875128623950 -219 (1.81154e-066) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100100 #b1000011010110110001110001101001101000010001101001110)))
(assert (= r (fp #b0 #b01100100100 #b1000011010110110001110001101001101000010001101001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
