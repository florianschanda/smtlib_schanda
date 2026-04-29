(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3034335430587786763823032742948271334171295166015625p-208 {+ 1366543191451225 -208 (3.16847e-063)}
; 1.3034335430587786763823032742948271334171295166015625p-208 | == 1.3034335430587786763823032742948271334171295166015625p-208
; [HW: 1.3034335430587786763823032742948271334171295166015625p-208] 

; mpf : + 1366543191451225 -208
; mpfd: + 1366543191451225 -208 (3.16847e-063) class: Pos. norm. non-zero
; hwf : + 1366543191451225 -208 (3.16847e-063) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100101111 #b0100110110101101110100100001011111110010011001011001)))
(assert (= r (fp #b0 #b01100101111 #b0100110110101101110100100001011111110010011001011001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
