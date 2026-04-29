(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8696083305294466381241136332391761243343353271484375p-519 {- 3916367753330695 -519 (-1.08939e-156)}
; Y = 1.2073643593837750653818829960073344409465789794921875p-340 {+ 933886051650691 -340 (5.39063e-103)}
; -1.8696083305294466381241136332391761243343353271484375p-519 < 1.2073643593837750653818829960073344409465789794921875p-340 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111111000 #b1101111010011110101001101100101111110100000000000111)))
(assert (= y (fp #b0 #b01010101011 #b0011010100010101110101001010010111101000110010000011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
