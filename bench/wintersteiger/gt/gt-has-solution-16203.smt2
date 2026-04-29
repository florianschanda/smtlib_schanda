(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.787998016422062352859256861847825348377227783203125p414 {+ 3548827573127090 414 (7.56459e+124)}
; Y = -1.4767571785993285349292136743315495550632476806640625p492 {- 2147123451886145 492 (-1.88828e+148)}
; 1.787998016422062352859256861847825348377227783203125p414 > -1.4767571785993285349292136743315495550632476806640625p492 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110011101 #b1100100110111010001111001110110111011000011110110010)))
(assert (= y (fp #b1 #b10111101011 #b0111101000001100110000100010101000110111101001000001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
