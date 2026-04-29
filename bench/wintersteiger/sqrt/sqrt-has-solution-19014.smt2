(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5294747221474640497262953431345522403717041015625p627 {+ 2384542161365416 627 (8.51823e+188)}
; 1.5294747221474640497262953431345522403717041015625p627 S == 1.7489852613143792581240631989203393459320068359375p313
; [HW: 1.7489852613143792581240631989203393459320068359375p313] 

; mpf : + 3373129743761432 313
; mpfd: + 3373129743761432 313 (2.9186e+094) class: Pos. norm. non-zero
; hwf : + 3373129743761432 313 (2.9186e+094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001110010 #b1000011110001011101001111100011110101110100110101000)))
(assert (= r (fp #b0 #b10100111000 #b1011111110111101011111111000001010001000000000011000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
