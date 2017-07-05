(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.113082879944548242434620988206006586551666259765625p547 {+ 509280015980250 547 (5.12785e+164)}
; Y = 0.9437347437214034240327009683824144303798675537109375p-1022 {+ 4250203440160303 -1023 (2.09988e-308)}
; 1.113082879944548242434620988206006586551666259765625p547 m 0.9437347437214034240327009683824144303798675537109375p-1022 == 0.9437347437214034240327009683824144303798675537109375p-1022
; [HW: 0.9437347437214034240327009683824144303798675537109375p-1022] 

; mpf : + 4250203440160303 -1023
; mpfd: + 4250203440160303 -1023 (2.09988e-308) class: Pos. denorm.
; hwf : + 4250203440160303 -1023 (2.09988e-308) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100010 #b0001110011110010111111111110011100011001011011011010)))
(assert (= y (fp #b0 #b00000000000 #b1111000110011000100110011010010001100001111000101111)))
(assert (= r (fp #b0 #b00000000000 #b1111000110011000100110011010010001100001111000101111)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
