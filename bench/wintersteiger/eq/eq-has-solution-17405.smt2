(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.046476842240813720508185724611394107341766357421875p1016 {+ 209313089397086 1016 (7.34861e+305)}
; Y = -1.384259361346557692939995831693522632122039794921875p-659 {- 1730550316573982 -659 (-5.78696e-199)}
; 1.046476842240813720508185724611394107341766357421875p1016 = -1.384259361346557692939995831693522632122039794921875p-659 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111110111 #b0000101111100101111010000000010101110010000101011110)))
(assert (= y (fp #b1 #b00101101100 #b0110001001011110110100100100111000101010010100011110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
