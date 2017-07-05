(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = 1.1128888449692622142350728609017096459865570068359375p268 {+ 508406160137855 268 (5.27826e+080)}
; -zero + 1.1128888449692622142350728609017096459865570068359375p268 == 1.1128888449692622142350728609017096459865570068359375p268
; [HW: 1.1128888449692622142350728609017096459865570068359375p268] 

; mpf : + 508406160137855 268
; mpfd: + 508406160137855 268 (5.27826e+080) class: Pos. norm. non-zero
; hwf : + 508406160137855 268 (5.27826e+080) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b10100001011 #b0001110011100110010010001000100100111001111001111111)))
(assert (= r (fp #b0 #b10100001011 #b0001110011100110010010001000100100111001111001111111)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
