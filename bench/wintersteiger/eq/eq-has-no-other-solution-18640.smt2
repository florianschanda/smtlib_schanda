(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5487623301484234605851497690309770405292510986328125p-360 {- 2471405825571405 -360 (-6.59457e-109)}
; Y = -1.92892995998790706124736971105448901653289794921875p526 {- 4183528621654828 526 (-4.23735e+158)}
; -1.5487623301484234605851497690309770405292510986328125p-360 = -1.92892995998790706124736971105448901653289794921875p526 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010111 #b1000110001111011101100000010010101000011101001001101)))
(assert (= y (fp #b1 #b11000001101 #b1110110111001110010110101001011001101100001100101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
