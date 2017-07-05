(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.76614406948222057991415567812509834766387939453125p386 {+ 3450406145832244 386 (2.78358e+116)}
; Y = 1.330735916963692755388137811678461730480194091796875p-705 {+ 1489502152395726 -705 (7.90578e-213)}
; 1.76614406948222057991415567812509834766387939453125p386 = 1.330735916963692755388137811678461730480194091796875p-705 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110000001 #b1100010000100010000001001000101001110011010100110100)))
(assert (= y (fp #b0 #b00100111110 #b0101010010101011000110111110101011111000101111001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
