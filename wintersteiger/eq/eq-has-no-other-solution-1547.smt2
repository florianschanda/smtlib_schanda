(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.14073842927687252313262433744966983795166015625p-681 {- 633829537648032 -681 (-1.137e-205)}
; Y = -1.051775361727169677550364212947897613048553466796875p752 {- 233175499781454 752 (-2.49161e+226)}
; -1.14073842927687252313262433744966983795166015625p-681 = -1.051775361727169677550364212947897613048553466796875p752 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010110 #b0010010000000111011011110000011100001000110110100000)))
(assert (= y (fp #b1 #b11011101111 #b0000110101000001001001100110110101011011010101001110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
