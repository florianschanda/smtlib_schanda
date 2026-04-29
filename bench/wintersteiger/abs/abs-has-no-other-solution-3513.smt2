(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.513189360726297394421635544858872890472412109375p-103 {+ 2311199413737456 -103 (1.49212e-031)}
; 1.513189360726297394421635544858872890472412109375p-103 | == 1.513189360726297394421635544858872890472412109375p-103
; [HW: 1.513189360726297394421635544858872890472412109375p-103] 

; mpf : + 2311199413737456 -103
; mpfd: + 2311199413737456 -103 (1.49212e-031) class: Pos. norm. non-zero
; hwf : + 2311199413737456 -103 (1.49212e-031) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110011000 #b1000001101100000011000001100000011111001011111110000)))
(assert (= r (fp #b0 #b01110011000 #b1000001101100000011000001100000011111001011111110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
