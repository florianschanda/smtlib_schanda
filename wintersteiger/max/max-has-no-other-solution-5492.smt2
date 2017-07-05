(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3338566440649517463867823607870377600193023681640625p338 {- 1503556657806081 338 (-7.46875e+101)}
; Y = -1.220797919384583707369529292918741703033447265625p-730 {- 994385427464592 -730 (-2.16146e-220)}
; -1.3338566440649517463867823607870377600193023681640625p338 M -1.220797919384583707369529292918741703033447265625p-730 == -1.220797919384583707369529292918741703033447265625p-730
; [HW: -1.220797919384583707369529292918741703033447265625p-730] 

; mpf : - 994385427464592 -730
; mpfd: - 994385427464592 -730 (-2.16146e-220) class: Neg. norm. non-zero
; hwf : - 994385427464592 -730 (-2.16146e-220) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101010001 #b0101010101110111101000010000011111001111101100000001)))
(assert (= y (fp #b1 #b00100100101 #b0011100010000110001101100110001011001000000110010000)))
(assert (= r (fp #b1 #b00100100101 #b0011100010000110001101100110001011001000000110010000)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
