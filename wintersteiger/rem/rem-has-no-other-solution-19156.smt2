(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4132616480951176729519147556857205927371978759765625p777 {- 1861165004367689 777 (-1.12339e+234)}
; Y = -1.8764390155638894785994352787383832037448883056640625p697 {- 3947130423906497 697 (-1.23379e+210)}
; -1.4132616480951176729519147556857205927371978759765625p777 % -1.8764390155638894785994352787383832037448883056640625p697 == -1.381620747490374778720934045850299298763275146484375p697
; [HW: -1.381620747490374778720934045850299298763275146484375p697] 

; mpf : - 1718667056194502 697
; mpfd: - 1718667056194502 697 (-9.08439e+209) class: Neg. norm. non-zero
; hwf : - 1718667056194502 697 (-9.08439e+209) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001000 #b0110100111001011100000111110111101000010011101001001)))
(assert (= y (fp #b1 #b11010111000 #b1110000001011110010011101010110011001001000011000001)))
(assert (= r (fp #b0 #b11010110110 #xfab1a3db5b3ec)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
