(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.49662726593228345706165782758034765720367431640625p-224 {+ 2236610369794660 -224 (5.5513e-068)}
; 1.49662726593228345706165782758034765720367431640625p-224 | == 1.49662726593228345706165782758034765720367431640625p-224
; [HW: 1.49662726593228345706165782758034765720367431640625p-224] 

; mpf : + 2236610369794660 -224
; mpfd: + 2236610369794660 -224 (5.5513e-068) class: Pos. norm. non-zero
; hwf : + 2236610369794660 -224 (5.5513e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011111 #b0111111100100010111101101110100101111011001001100100)))
(assert (= r (fp #b0 #b01100011111 #b0111111100100010111101101110100101111011001001100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
