(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0379506826501909699800307862460613250732421875p-575 {+ 170914680241856 -575 (8.39323e-174)}
; Y = -1.9314080347980386864747970321332104504108428955078125p334 {- 4194688878446333 334 (-6.75916e+100)}
; 1.0379506826501909699800307862460613250732421875p-575 < -1.9314080347980386864747970321332104504108428955078125p334 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111000000 #b0000100110110111001000101100110011010111111011000000)))
(assert (= y (fp #b1 #b10101001101 #b1110111001110000110000011100100010110000011011111101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
