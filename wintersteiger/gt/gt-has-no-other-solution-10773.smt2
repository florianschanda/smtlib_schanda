(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7872821661163820206041918936534784734249114990234375p-409 {+ 3545603669957175 -409 (1.35184e-123)}
; Y = -0.4100387140295140842027876715292222797870635986328125p-1022 {- 1846650199710797 -1023 (-9.12366e-309)}
; 1.7872821661163820206041918936534784734249114990234375p-409 > -0.4100387140295140842027876715292222797870635986328125p-1022 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01001100110 #b1100100110001011010100101111010000110001101000110111)))
(assert (= y (fp #b1 #b00000000000 #b0110100011111000010011000001001011011001110001001101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
