(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.009797111340250186373168617137707769870758056640625p785 {- 44122266981258 785 (-2.05485e+236)}
; -1.009797111340250186373168617137707769870758056640625p785 | == 1.009797111340250186373168617137707769870758056640625p785
; [HW: 1.009797111340250186373168617137707769870758056640625p785] 

; mpf : + 44122266981258 785
; mpfd: + 44122266981258 785 (2.05485e+236) class: Pos. norm. non-zero
; hwf : + 44122266981258 785 (2.05485e+236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100010000 #b0000001010000010000100000100000011001101001110001010)))
(assert (= r (fp #b0 #b11100010000 #b0000001010000010000100000100000011001101001110001010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
