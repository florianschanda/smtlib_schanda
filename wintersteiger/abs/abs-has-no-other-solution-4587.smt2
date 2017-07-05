(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7287038060308306253176624522893689572811126708984375p-111 {+ 3281790189303911 -111 (6.65872e-034)}
; 1.7287038060308306253176624522893689572811126708984375p-111 | == 1.7287038060308306253176624522893689572811126708984375p-111
; [HW: 1.7287038060308306253176624522893689572811126708984375p-111] 

; mpf : + 3281790189303911 -111
; mpfd: + 3281790189303911 -111 (6.65872e-034) class: Pos. norm. non-zero
; hwf : + 3281790189303911 -111 (6.65872e-034) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010000 #b1011101010001100010101010010011101011111100001100111)))
(assert (= r (fp #b0 #b01110010000 #b1011101010001100010101010010011101011111100001100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
