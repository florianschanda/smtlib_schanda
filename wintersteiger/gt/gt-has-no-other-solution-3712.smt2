(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.677118735787549663740492178476415574550628662109375p-825 {- 3049471686178390 -825 (-7.49579e-249)}
; Y = -1.048317235497094213059199319104664027690887451171875p-226 {- 217601483780286 -226 (-9.72106e-069)}
; -1.677118735787549663740492178476415574550628662109375p-825 > -1.048317235497094213059199319104664027690887451171875p-226 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011000110 #b1010110101010111101001110100100110110111011001010110)))
(assert (= y (fp #b1 #b01100011101 #b0000110001011110100001001011001001001011000010111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
