(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9544023388329152535192179129808209836483001708984375p103 {+ 4298246017529447 103 (1.982e+031)}
; 1.9544023388329152535192179129808209836483001708984375p103 S == 1.977069719981020323729126175749115645885467529296875p51
; [HW: 1.977069719981020323729126175749115645885467529296875p51] 

; mpf : + 4400330826821518 51
; mpfd: + 4400330826821518 51 (4.45197e+015) class: Pos. norm. non-zero
; hwf : + 4400330826821518 51 (4.45197e+015) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001100110 #b1111010001010011101101100011000010000011011001100111)))
(assert (= r (fp #b0 #b10000110010 #b1111101000100001001111011011110100111010111110001110)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
