(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5732598699649376072784434654749929904937744140625p559 {- 2581732936760552 559 (-2.96871e+168)}
; Y = 1.5486836728324551160085320589132606983184814453125p108 {+ 2471051584512520 108 (5.02577e+032)}
; -1.5732598699649376072784434654749929904937744140625p559 - 1.5486836728324551160085320589132606983184814453125p108 == -1.5732598699649378293230483905063010752201080322265625p559
; [HW: -1.5732598699649378293230483905063010752201080322265625p559] 

; mpf : - 2581732936760553 559
; mpfd: - 2581732936760553 559 (-2.96871e+168) class: Neg. norm. non-zero
; hwf : - 2581732936760553 559 (-2.96871e+168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101110 #b1001001011000001001010001010100110011011110011101000)))
(assert (= y (fp #b0 #b10001101011 #b1000110001110110100010000111111010101010001000001000)))
(assert (= r (fp #b1 #b11000101110 #b1001001011000001001010001010100110011011110011101001)))
(assert  (not (= (fp.sub roundTowardNegative x y) r)))
(check-sat)
(exit)
