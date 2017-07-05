(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3549551065160903018380622597760520875453948974609375p-91 {- 1598575685439119 -91 (-5.47262e-028)}
; Y = -1.9382892479341815583637753661605529487133026123046875p32 {- 4225679107362123 32 (-8.32489e+009)}
; -1.3549551065160903018380622597760520875453948974609375p-91 m -1.9382892479341815583637753661605529487133026123046875p32 == -1.9382892479341815583637753661605529487133026123046875p32
; [HW: -1.9382892479341815583637753661605529487133026123046875p32] 

; mpf : - 4225679107362123 32
; mpfd: - 4225679107362123 32 (-8.32489e+009) class: Neg. norm. non-zero
; hwf : - 4225679107362123 32 (-8.32489e+009) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110100100 #b0101101011011110010101100111111000001000111010001111)))
(assert (= y (fp #b1 #b10000011111 #b1111000000110011101110010110001000010000110101001011)))
(assert (= r (fp #b1 #b10000011111 #b1111000000110011101110010110001000010000110101001011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
