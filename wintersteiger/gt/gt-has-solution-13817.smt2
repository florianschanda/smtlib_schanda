(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.03741017877687990988988531171344220638275146484375p-485 {+ 168480467199420 -485 (1.03849e-146)}
; Y = -1.3054486611902638149018684998736716806888580322265625p985 {- 1375618476717289 985 (-4.2688e+296)}
; 1.03741017877687990988988531171344220638275146484375p-485 > -1.3054486611902638149018684998736716806888580322265625p985 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000011010 #b0000100110010011101101101010011001100010010110111100)))
(assert (= y (fp #b1 #b11111011000 #b0100111000110001111000100010101001101011010011101001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
