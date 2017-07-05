(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6439694009176599731603118925704620778560638427734375p-870 {- 2900180354010775 -870 (-2.08832e-262)}
; Y = -1.1308971017094224809085289962240494787693023681640625p-2 {- 589508138482433 -2 (-0.282724)}
; -1.6439694009176599731603118925704620778560638427734375p-870 M -1.1308971017094224809085289962240494787693023681640625p-2 == -1.6439694009176599731603118925704620778560638427734375p-870
; [HW: -1.6439694009176599731603118925704620778560638427734375p-870] 

; mpf : - 2900180354010775 -870
; mpfd: - 2900180354010775 -870 (-2.08832e-262) class: Neg. norm. non-zero
; hwf : - 2900180354010775 -870 (-2.08832e-262) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011001 #b1010010011011011001011011011110010010000111010010111)))
(assert (= y (fp #b1 #b01111111101 #b0010000110000010011110001111001011111011101100000001)))
(assert (= r (fp #b1 #b00010011001 #b1010010011011011001011011011110010010000111010010111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
