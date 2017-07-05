(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.782596319222467418086353063699789345264434814453125p-926 {- 3524500491631826 -926 (-3.14251e-279)}
; Y = NaN {- 2540924452161590 1024 (-1.#QNAN)}
; -1.782596319222467418086353063699789345264434814453125p-926 = NaN == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001100001 #b1100100001011000001110110111110100000111110011010010)))
(assert (= y (_ NaN 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
