(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -0.8656247516286459386947171879000961780548095703125p-1022 {- 3898427308877448 -1023 (-1.92608e-308)}
; -0.8656247516286459386947171879000961780548095703125p-1022 | == 0.8656247516286459386947171879000961780548095703125p-1022
; [HW: 0.8656247516286459386947171879000961780548095703125p-1022] 

; mpf : + 3898427308877448 -1023
; mpfd: + 3898427308877448 -1023 (1.92608e-308) class: Pos. denorm.
; hwf : + 3898427308877448 -1023 (1.92608e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b1101110110011001100101010110111011011010011010001000)))
(assert (= r (fp #b0 #b00000000000 #b1101110110011001100101010110111011011010011010001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
