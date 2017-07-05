(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.317655718151078847455437426106072962284088134765625p-167 {- 1430594173897306 -167 (-7.04357e-051)}
; Y = 1.390685977490436098236159523366950452327728271484375p791 {+ 1759493222644806 791 (1.81116e+238)}
; -1.317655718151078847455437426106072962284088134765625p-167 < 1.390685977490436098236159523366950452327728271484375p791 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101011000 #b0101000101010001111000101001100011011000101001011010)))
(assert (= y (fp #b0 #b11100010110 #b0110010000000011111111110000100001010011110001000110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
