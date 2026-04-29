(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0998562327203214028514821620774455368518829345703125p438 {+ 449712492469861 438 (7.80682e+131)}
; Y = 1.4485733631984027969252792900078929960727691650390625p-670 {+ 2020194831348657 -670 (2.95695e-202)}
; 1.0998562327203214028514821620774455368518829345703125p438 > 1.4485733631984027969252792900078929960727691650390625p-670 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110110101 #b0001100110010000001011011001010111010101111001100101)))
(assert (= y (fp #b0 #b00101100001 #b0111001011010101101101000011010011001011001110110001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
