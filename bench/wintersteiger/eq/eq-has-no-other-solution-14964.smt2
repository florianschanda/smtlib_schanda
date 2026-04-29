(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.660078923494483493783491212525404989719390869140625p800 {- 2972731193884874 800 (-1.10694e+241)}
; Y = 0.61969037067818089070669884677045047283172607421875p-1022 {+ 2790837322471340 -1023 (1.37886e-308)}
; -1.660078923494483493783491212525404989719390869140625p800 = 0.61969037067818089070669884677045047283172607421875p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100011111 #b1010100011111010111011101010110100110000000011001010)))
(assert (= y (fp #b0 #b00000000000 #b1001111010100100000001110011001110110101011110101100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
