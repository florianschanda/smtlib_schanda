(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8882085532429562224621122368262149393558502197265625p337 {- 4000135709412265 337 (-5.28638e+101)}
; Y = 1.39613225657245632049807682051323354244232177734375p8 {+ 1784021083089148 8 (357.41)}
; -1.8882085532429562224621122368262149393558502197265625p337 + 1.39613225657245632049807682051323354244232177734375p8 == -1.8882085532429562224621122368262149393558502197265625p337
; [HW: -1.8882085532429562224621122368262149393558502197265625p337] 

; mpf : - 4000135709412265 337
; mpfd: - 4000135709412265 337 (-5.28638e+101) class: Neg. norm. non-zero
; hwf : - 4000135709412265 337 (-5.28638e+101) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101010000 #b1110001101100001101000101100000000110100101110101001)))
(assert (= y (fp #b0 #b10000000111 #b0110010101101000111011000110111011011110100011111100)))
(assert (= r (fp #b1 #b10101010000 #b1110001101100001101000101100000000110100101110101001)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
