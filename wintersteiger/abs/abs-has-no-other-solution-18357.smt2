(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8137304826149145409175389431766234338283538818359375p781 {- 3664716298284543 781 (-2.30674e+235)}
; -1.8137304826149145409175389431766234338283538818359375p781 | == 1.8137304826149145409175389431766234338283538818359375p781
; [HW: 1.8137304826149145409175389431766234338283538818359375p781] 

; mpf : + 3664716298284543 781
; mpfd: + 3664716298284543 781 (2.30674e+235) class: Pos. norm. non-zero
; hwf : + 3664716298284543 781 (2.30674e+235) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001100 #b1101000001010000101001000001001010010110110111111111)))
(assert (= r (fp #b0 #b11100001100 #b1101000001010000101001000001001010010110110111111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
