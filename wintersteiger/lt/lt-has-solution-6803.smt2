(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4929994427181576543972596482490189373493194580078125p246 {+ 2220272106519357 246 (1.68826e+074)}
; Y = +zero {+ 0 -1023 (0)}
; 1.4929994427181576543972596482490189373493194580078125p246 < +zero == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011110101 #b0111111000110101001101100010001101101011101100111101)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
