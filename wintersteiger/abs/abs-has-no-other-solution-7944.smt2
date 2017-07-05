(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.86955448940196955476267248741351068019866943359375p-225 {+ 3916125274449052 -225 (3.46728e-068)}
; 1.86955448940196955476267248741351068019866943359375p-225 | == 1.86955448940196955476267248741351068019866943359375p-225
; [HW: 1.86955448940196955476267248741351068019866943359375p-225] 

; mpf : + 3916125274449052 -225
; mpfd: + 3916125274449052 -225 (3.46728e-068) class: Pos. norm. non-zero
; hwf : + 3916125274449052 -225 (3.46728e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011110 #b1101111010011011000111110111111000010010010010011100)))
(assert (= r (fp #b0 #b01100011110 #b1101111010011011000111110111111000010010010010011100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
