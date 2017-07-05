(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4558181184330720725483843125402927398681640625p926 {+ 2052822308323904 926 (8.25816e+278)}
; Y = 0.737914350676839081444313706015236675739288330078125p-1022 {+ 3323270794739554 -1023 (1.64191e-308)}
; 1.4558181184330720725483843125402927398681640625p926 + 0.737914350676839081444313706015236675739288330078125p-1022 == 1.4558181184330720725483843125402927398681640625p926
; [HW: 1.4558181184330720725483843125402927398681640625p926] 

; mpf : + 2052822308323904 926
; mpfd: + 2052822308323904 926 (8.25816e+278) class: Pos. norm. non-zero
; hwf : + 2052822308323904 926 (8.25816e+278) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011101 #b0111010010110000011111110000011110011000001001000000)))
(assert (= y (fp #b0 #b00000000000 #b1011110011100111111101000111001101100111111101100010)))
(assert (= r (fp #b0 #b11110011101 #b0111010010110000011111110000011110011000001001000000)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
