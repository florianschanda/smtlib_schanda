(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2266641668764493022791839393903501331806182861328125p-800 {- 1020804657483021 -800 (-1.83962e-241)}
; Y = 1.6298412105587087861380268805078230798244476318359375p-75 {+ 2836552641174783 -75 (4.31415e-023)}
; -1.2266641668764493022791839393903501331806182861328125p-800 m 1.6298412105587087861380268805078230798244476318359375p-75 == -1.2266641668764493022791839393903501331806182861328125p-800
; [HW: -1.2266641668764493022791839393903501331806182861328125p-800] 

; mpf : - 1020804657483021 -800
; mpfd: - 1020804657483021 -800 (-1.83962e-241) class: Neg. norm. non-zero
; hwf : - 1020804657483021 -800 (-1.83962e-241) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011011111 #b0011101000000110101010011010111111101000110100001101)))
(assert (= y (fp #b0 #b01110110100 #b1010000100111101010001100000100100000101110011111111)))
(assert (= r (fp #b1 #b00011011111 #b0011101000000110101010011010111111101000110100001101)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
