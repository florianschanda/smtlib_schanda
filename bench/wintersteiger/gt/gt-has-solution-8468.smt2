(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2945604634850453873440301322261802852153778076171875p-943 {- 1326582393589331 -943 (-1.74115e-284)}
; Y = 1.4105685414845268166317282521049492061138153076171875p716 {+ 1849036330439763 716 (4.86263e+215)}
; -1.2945604634850453873440301322261802852153778076171875p-943 > 1.4105685414845268166317282521049492061138153076171875p716 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010000 #b0100101101101000010100001000010101011100111001010011)))
(assert (= y (fp #b0 #b11011001011 #b0110100100011011000001010001101001110001010001010011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
