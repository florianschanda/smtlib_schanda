(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7509225636337060194591686013154685497283935546875p-34 {+ 3381854577764856 -34 (1.01917e-010)}
; Y = +zero {+ 0 -1023 (0)}
; 1.7509225636337060194591686013154685497283935546875p-34 > +zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111011101 #b1100000000111100011101100000110010100010100111111000)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
