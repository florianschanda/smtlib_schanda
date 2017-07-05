(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.30908028566883416488053626380860805511474609375p-752 {- 1391973859365728 -752 (-5.52598e-227)}
; Y = -1.9982038189749113943349811961525119841098785400390625p-244 {- 4495510347175217 -244 (-7.0684e-074)}
; -1.30908028566883416488053626380860805511474609375p-752 = -1.9982038189749113943349811961525119841098785400390625p-244 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100001111 #b0100111100011111111000101011011011001001001101100000)))
(assert (= y (fp #b1 #b01100001011 #b1111111110001010010010010001010100111101010100110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
