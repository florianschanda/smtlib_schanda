(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.01531941388778790269498131237924098968505859375p-895 {+ 68992506676576 -895 (3.84376e-270)}
; Y = -1.9728614823509402764756259784917347133159637451171875p-311 {- 4381378609398803 -311 (-4.72899e-094)}
; 1.01531941388778790269498131237924098968505859375p-895 > -1.9728614823509402764756259784917347133159637451171875p-311 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000000 #b0000001111101011111110010001110110100100010101100000)))
(assert (= y (fp #b1 #b01011001000 #b1111100100001101011100110011101000111100010000010011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
