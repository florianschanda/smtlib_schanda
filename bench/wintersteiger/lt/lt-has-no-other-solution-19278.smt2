(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.263378368265216433741215951158665120601654052734375p-129 {- 1186150721176678 -129 (-1.85637e-039)}
; Y = -1.8471149984151111755892316068639047443866729736328125p220 {- 3815066791202253 220 (-3.11238e+066)}
; -1.263378368265216433741215951158665120601654052734375p-129 < -1.8471149984151111755892316068639047443866729736328125p220 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101111110 #b0100001101101100110000111100011000101100010001100110)))
(assert (= y (fp #b1 #b10011011011 #b1101100011011100100001110100111000100100110111001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
