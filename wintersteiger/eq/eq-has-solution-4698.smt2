(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5118858970385382622936276675318367779254913330078125p-89 {+ 2305329135158973 -89 (2.44258e-027)}
; Y = -1.86974360684975149382580639212392270565032958984375p-38 {- 3916976983716412 -38 (-6.80209e-012)}
; 1.5118858970385382622936276675318367779254913330078125p-89 = -1.86974360684975149382580639212392270565032958984375p-38 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110100110 #b1000001100001010111101000100001100010000011010111101)))
(assert (= y (fp #b1 #b01111011001 #b1101111010100111100001000101101101010011001000111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
