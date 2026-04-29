(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.89780946343284195876321973628364503383636474609375p-578 {- 4043374364965852 -578 (-1.91829e-174)}
; Y = 1.6606627453607700761750720630516298115253448486328125p358 {+ 2975360493824333 358 (9.75034e+107)}
; -1.89780946343284195876321973628364503383636474609375p-578 = 1.6606627453607700761750720630516298115253448486328125p358 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110111101 #b1110010111010110110101110100101101111011101111011100)))
(assert (= y (fp #b0 #b10101100101 #b1010100100100001001100011001010100000010100101001101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
