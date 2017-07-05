(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.626217918695390007854939540266059339046478271484375p64 {- 2820234785289286 64 (-2.99984e+019)}
; Y = 1.7619938133140811142851589465863071382045745849609375p658 {+ 3431715053699919 658 (2.10737e+198)}
; -1.626217918695390007854939540266059339046478271484375p64 = 1.7619938133140811142851589465863071382045745849609375p658 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000111111 #b1010000001001111110100010100100011110111010001000110)))
(assert (= y (fp #b0 #b11010010001 #b1100001100010010000001101100101111110000001101001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
