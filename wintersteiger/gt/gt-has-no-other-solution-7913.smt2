(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.339296215724841143668299991986714303493499755859375p-134 {+ 1528054310706614 -134 (6.14975e-041)}
; Y = 1.5497234377500366253599395349738188087940216064453125p171 {+ 2475734269407893 171 (4.63856e+051)}
; 1.339296215724841143668299991986714303493499755859375p-134 > 1.5497234377500366253599395349738188087940216064453125p171 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101111001 #b0101011011011100000111011110011000110001110110110110)))
(assert (= y (fp #b0 #b10010101010 #b1000110010111010101011001101101011111011001010010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
