(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4199781739485513032406061029178090393543243408203125p-641 {+ 1891413547698437 -641 (1.55616e-193)}
; Y = 1.248577220054036818197573666111566126346588134765625p-413 {+ 1119492275608154 -413 (5.90238e-125)}
; 1.4199781739485513032406061029178090393543243408203125p-641 < 1.248577220054036818197573666111566126346588134765625p-413 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111110 #b0110101110000011101100001000101000100100100100000101)))
(assert (= y (fp #b0 #b01001100010 #b0011111110100010110000011011011010101001101001011010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
