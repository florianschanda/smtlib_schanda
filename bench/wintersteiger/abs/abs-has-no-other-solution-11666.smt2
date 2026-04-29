(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2590618439053837818164538475684821605682373046875p48 {- 1166710823678200 48 (-3.54394e+014)}
; -1.2590618439053837818164538475684821605682373046875p48 | == 1.2590618439053837818164538475684821605682373046875p48
; [HW: 1.2590618439053837818164538475684821605682373046875p48] 

; mpf : + 1166710823678200 48
; mpfd: + 1166710823678200 48 (3.54394e+014) class: Pos. norm. non-zero
; hwf : + 1166710823678200 48 (3.54394e+014) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000101111 #b0100001001010001111000001000001100110111000011111000)))
(assert (= r (fp #b0 #b10000101111 #b0100001001010001111000001000001100110111000011111000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
