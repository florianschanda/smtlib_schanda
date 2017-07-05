(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4356865698011411769385858860914595425128936767578125p-885 {- 1962157873406749 -885 (-5.56562e-267)}
; -1.4356865698011411769385858860914595425128936767578125p-885 | == 1.4356865698011411769385858860914595425128936767578125p-885
; [HW: 1.4356865698011411769385858860914595425128936767578125p-885] 

; mpf : + 1962157873406749 -885
; mpfd: + 1962157873406749 -885 (5.56562e-267) class: Pos. norm. non-zero
; hwf : + 1962157873406749 -885 (5.56562e-267) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010001010 #b0110111110001001001001111011000010011010001100011101)))
(assert (= r (fp #b0 #b00010001010 #b0110111110001001001001111011000010011010001100011101)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
