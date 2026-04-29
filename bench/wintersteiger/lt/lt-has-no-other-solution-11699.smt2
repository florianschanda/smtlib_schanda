(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.812619271848280977366130173322744667530059814453125p120 {- 3659711849890002 120 (-2.40938e+036)}
; Y = -1.9138881947827941498729842351167462766170501708984375p-151 {- 4115786533482087 -151 (-6.70482e-046)}
; -1.812619271848280977366130173322744667530059814453125p120 < -1.9138881947827941498729842351167462766170501708984375p-151 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001110111 #b1101000000000111110100010000110010110000000011010010)))
(assert (= y (fp #b1 #b01101101000 #b1110100111110100100100111010010011001010111001100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
