(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5371017589622189003506491644657216966152191162109375p-520 {+ 2418891281522287 -520 (4.47821e-157)}
; 1.5371017589622189003506491644657216966152191162109375p-520 | == 1.5371017589622189003506491644657216966152191162109375p-520
; [HW: 1.5371017589622189003506491644657216966152191162109375p-520] 

; mpf : + 2418891281522287 -520
; mpfd: + 2418891281522287 -520 (4.47821e-157) class: Pos. norm. non-zero
; hwf : + 2418891281522287 -520 (4.47821e-157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111110111 #b1000100101111111100000000011100101011101111001101111)))
(assert (= r (fp #b0 #b00111110111 #b1000100101111111100000000011100101011101111001101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
