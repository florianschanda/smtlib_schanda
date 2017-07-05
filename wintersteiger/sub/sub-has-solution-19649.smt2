(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5114077949554955981881221305229701101779937744140625p-384 {- 2303175954795937 -384 (-3.83587e-116)}
; Y = 1.4927115311682472853505032617249526083469390869140625p103 {+ 2218975468170465 103 (1.51379e+031)}
; -1.5114077949554955981881221305229701101779937744140625p-384 - 1.4927115311682472853505032617249526083469390869140625p103 == -1.4927115311682472853505032617249526083469390869140625p103
; [HW: -1.4927115311682472853505032617249526083469390869140625p103] 

; mpf : - 2218975468170465 103
; mpfd: - 2218975468170465 103 (-1.51379e+031) class: Neg. norm. non-zero
; hwf : - 2218975468170465 103 (-1.51379e+031) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001111111 #b1000001011101011100111110000101001000000110110100001)))
(assert (= y (fp #b0 #b10001100110 #b0111111000100010010101111100100010111010110011100001)))
(assert (= r (fp #b1 #b10001100110 #b0111111000100010010101111100100010111010110011100001)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
