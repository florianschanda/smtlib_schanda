(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3881205175277047114690276430337689816951751708984375p-934 {+ 1747939418112615 -934 (9.55897e-282)}
; Y = -1.7246140515183918662245332598104141652584075927734375p386 {- 3263371572405655 386 (-2.71813e+116)}
; 1.3881205175277047114690276430337689816951751708984375p-934 m -1.7246140515183918662245332598104141652584075927734375p386 == -1.7246140515183918662245332598104141652584075927734375p386
; [HW: -1.7246140515183918662245332598104141652584075927734375p386] 

; mpf : - 3263371572405655 386
; mpfd: - 3263371572405655 386 (-2.71813e+116) class: Neg. norm. non-zero
; hwf : - 3263371572405655 386 (-2.71813e+116) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001011001 #b0110001101011011110111011100000110110000001001100111)))
(assert (= y (fp #b1 #b10110000001 #b1011100110000000010011100111010101111110010110010111)))
(assert (= r (fp #b1 #b10110000001 #b1011100110000000010011100111010101111110010110010111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
