(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3857722847408713295891402594861574470996856689453125p889 {- 1737363917808853 889 (-5.7195e+267)}
; Y = 1.0989998592978167391009947095881216228008270263671875p727 {+ 445855729443379 727 (7.75898e+218)}
; -1.3857722847408713295891402594861574470996856689453125p889 = 1.0989998592978167391009947095881216228008270263671875p727 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101111000 #b0110001011000001111110001111001010101010010011010101)))
(assert (= y (fp #b0 #b11011010110 #b0001100101011000000011100000010111111110001000110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
