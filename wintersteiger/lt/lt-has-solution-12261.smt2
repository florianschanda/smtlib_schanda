(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.651385687428734261317231357679702341556549072265625p-958 {+ 2933580339178522 -958 (6.77817e-289)}
; Y = -1.589663276397170310616502320044673979282379150390625p-356 {- 2655607311856362 -356 (-1.083e-107)}
; 1.651385687428734261317231357679702341556549072265625p-958 < -1.589663276397170310616502320044673979282379150390625p-356 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001000001 #b1010011011000001001101100110000010010110110000011010)))
(assert (= y (fp #b1 #b01010011011 #b1001011011110100001011000010011111000111001011101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
