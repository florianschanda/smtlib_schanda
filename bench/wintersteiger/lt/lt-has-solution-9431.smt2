(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2329502104261553796504813362844288349151611328125p-378 {+ 1049114480871112 -378 (2.00266e-114)}
; Y = 1.51686515715874659093742593540810048580169677734375p865 {+ 2327753729180924 865 (3.73158e+260)}
; 1.2329502104261553796504813362844288349151611328125p-378 < 1.51686515715874659093742593540810048580169677734375p865 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010000101 #b0011101110100010100111111111111101100000011011001000)))
(assert (= y (fp #b0 #b11101100000 #b1000010001010001010001100110001001110000010011111100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
