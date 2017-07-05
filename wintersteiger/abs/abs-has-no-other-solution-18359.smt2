(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.550008621883806281260831383406184613704681396484375p-888 {+ 2477018624566470 -888 (7.511e-268)}
; 1.550008621883806281260831383406184613704681396484375p-888 | == 1.550008621883806281260831383406184613704681396484375p-888
; [HW: 1.550008621883806281260831383406184613704681396484375p-888] 

; mpf : + 2477018624566470 -888
; mpfd: + 2477018624566470 -888 (7.511e-268) class: Pos. norm. non-zero
; hwf : + 2477018624566470 -888 (7.511e-268) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010000111 #b1000110011001101010111010111001110000010010011000110)))
(assert (= r (fp #b0 #b00010000111 #b1000110011001101010111010111001110000010010011000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
