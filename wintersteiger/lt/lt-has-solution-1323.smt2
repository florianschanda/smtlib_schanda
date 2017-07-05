(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.136155150034153127336367106181569397449493408203125p-889 {+ 613188282958386 -889 (2.75278e-268)}
; Y = -1.4250439448600611402895310675376094877719879150390625p150 {- 1914227751687857 150 (-2.03389e+045)}
; 1.136155150034153127336367106181569397449493408203125p-889 < -1.4250439448600611402895310675376094877719879150390625p150 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000110 #b0010001011011011000100000101110010010100001000110010)))
(assert (= y (fp #b1 #b10010010101 #b0110110011001111101011100001001010001001011010110001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
