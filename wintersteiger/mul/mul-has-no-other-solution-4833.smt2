(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.1051153474189001624239381271763704717159271240234375p-614 {- 473397439466679 -614 (-1.62551e-185)}
; Y = 1.17606961321787917285064395400695502758026123046875p-786 {+ 792947044479308 -786 (2.88972e-237)}
; -1.1051153474189001624239381271763704717159271240234375p-614 * 1.17606961321787917285064395400695502758026123046875p-786 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110011001 #b0001101011101000110101101110001101111000110010110111)))
(assert (= y (fp #b0 #b00011101101 #b0010110100010010111001011110111010010111000101001100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
