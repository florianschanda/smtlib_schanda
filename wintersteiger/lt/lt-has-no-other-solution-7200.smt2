(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7214126459220049358833648511790670454502105712890625p-451 {+ 3248953723354705 -451 (2.96044e-136)}
; Y = -1.2330270606472513161833148842561058700084686279296875p-796 {- 1049460583498203 -796 (-2.95867e-240)}
; 1.7214126459220049358833648511790670454502105712890625p-451 < -1.2330270606472513161833148842561058700084686279296875p-796 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111100 #b1011100010101110011111111100100100100111111001010001)))
(assert (= y (fp #b1 #b00011100011 #b0011101110100111101010010101010010010000000111011011)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
