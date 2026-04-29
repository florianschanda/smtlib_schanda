(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2859402813314873004202354422886855900287628173828125p-316 {- 1287760544454701 -316 (-9.63257e-096)}
; Y = 1.514618896154751315208386586164124310016632080078125p-298 {+ 2317637468960354 -298 (2.97416e-090)}
; -1.2859402813314873004202354422886855900287628173828125p-316 > 1.514618896154751315208386586164124310016632080078125p-298 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011000011 #b0100100100110011011000011101110011101101100000101101)))
(assert (= y (fp #b0 #b01011010101 #b1000001110111110000100000110000011100011011001100010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
