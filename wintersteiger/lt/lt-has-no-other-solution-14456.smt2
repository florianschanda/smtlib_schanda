(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.67604587853025766008840946597047150135040283203125p282 {- 3044639966634228 282 (-1.3024e+085)}
; Y = 1.3021247955061079348837438374175690114498138427734375p-204 {+ 1360649116460695 -204 (5.06446e-062)}
; -1.67604587853025766008840946597047150135040283203125p282 < 1.3021247955061079348837438374175690114498138427734375p-204 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011001 #b1010110100010001010101111011101011100010000011110100)))
(assert (= y (fp #b0 #b01100110011 #b0100110101011000000011001111010000000010011010010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
