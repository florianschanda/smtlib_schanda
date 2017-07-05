(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.7850187293175248104404317928128875792026519775390625p-745 {+ 3535410056833265 -745 (9.64486e-225)}
; +zero - 1.7850187293175248104404317928128875792026519775390625p-745 == -1.7850187293175248104404317928128875792026519775390625p-745
; [HW: -1.7850187293175248104404317928128875792026519775390625p-745] 

; mpf : - 3535410056833265 -745
; mpfd: - 3535410056833265 -745 (-9.64486e-225) class: Neg. norm. non-zero
; hwf : - 3535410056833265 -745 (-9.64486e-225) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b00100010110 #b1100100011110110111111001100100100101010100011110001)))
(assert (= r (fp #b1 #b00100010110 #b1100100011110110111111001100100100101010100011110001)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
