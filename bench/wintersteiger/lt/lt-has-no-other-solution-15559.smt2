(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.49495894387036454276085351011715829372406005859375p-248 {+ 2229096915178268 -248 (3.30514e-075)}
; Y = -1.395771287594339771231943814200349152088165283203125p-677 {- 1782395423333810 -677 (-2.22591e-204)}
; 1.49495894387036454276085351011715829372406005859375p-248 < -1.395771287594339771231943814200349152088165283203125p-677 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100000111 #b0111111010110101101000010001110011001001001100011100)))
(assert (= y (fp #b1 #b00101011010 #b0110010101010001010001000110000011101001110110110010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
