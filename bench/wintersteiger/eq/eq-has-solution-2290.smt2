(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.45818627022574265339471821789629757404327392578125p-41 {+ 2063487515854932 -41 (6.63106e-013)}
; Y = -1.533350977065401021803836556500755250453948974609375p-904 {- 2401999261569430 -904 (-1.13377e-272)}
; 1.45818627022574265339471821789629757404327392578125p-41 = -1.533350977065401021803836556500755250453948974609375p-904 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01111010110 #b0111010101001011101100100000011000011000100001010100)))
(assert (= y (fp #b1 #b00001110111 #b1000100010001001101100001000101111001001000110010110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
