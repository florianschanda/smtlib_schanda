(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.427220983907807383417321034357883036136627197265625p446 {- 1924032263932058 446 (-2.5934e+134)}
; Y = 1.25619629768878127151765511371195316314697265625p-1018 {+ 1153805550804896 -1018 (4.47221e-307)}
; -1.427220983907807383417321034357883036136627197265625p446 = 1.25619629768878127151765511371195316314697265625p-1018 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111101 #b0110110101011110010110101011101000001100100010011010)))
(assert (= y (fp #b0 #b00000000101 #b0100000110010110000101001001111111101101111110100000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
