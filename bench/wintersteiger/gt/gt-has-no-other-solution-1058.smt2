(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1955297557995894219828869609045796096324920654296875p672 {- 880587735358875 672 (-2.3427e+202)}
; Y = -1.0433512391987866951836849693791009485721588134765625p843 {- 195236624701705 843 (-6.11951e+253)}
; -1.1955297557995894219828869609045796096324920654296875p672 > -1.0433512391987866951836849693791009485721588134765625p843 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010011111 #b0011001000001110001111001111001010001101110110011011)))
(assert (= y (fp #b1 #b11101001010 #b0000101100011001000100010001101010011001100100001001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
