(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9314411981379191463048528021317906677722930908203125p-620 {+ 4194838232851461 -620 (4.43899e-187)}
; Y = -1.4602604158172149961814056950970552861690521240234375p556 {- 2072828637167799 556 (-3.44435e+167)}
; 1.9314411981379191463048528021317906677722930908203125p-620 < -1.4602604158172149961814056950970552861690521240234375p556 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010011 #b1110111001110010111011100010110000100110010000000101)))
(assert (= y (fp #b1 #b11000101011 #b0111010111010011101000000110100110010100000010110111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
