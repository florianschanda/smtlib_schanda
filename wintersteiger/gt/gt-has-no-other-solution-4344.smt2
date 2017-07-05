(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.78172287743743229526671711937524378299713134765625p782 {- 3520566859534212 782 (-4.53207e+235)}
; Y = -1.3353514232565630859284055986790917813777923583984375p527 {- 1510288544816423 527 (-5.86683e+158)}
; -1.78172287743743229526671711937524378299713134765625p782 > -1.3353514232565630859284055986790917813777923583984375p527 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100001101 #b1100100000011110111111011001000100100000111110000100)))
(assert (= y (fp #b1 #b11000001110 #b0101010111011001100101110100001110001101110100100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
