(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4617085368927413835393736007972620427608489990234375p-221 {- 2079350394703927 -221 (-4.33742e-067)}
; Y = 1.506941260537165927502201157039962708950042724609375p-946 {+ 2283060472053910 -946 (2.5335e-285)}
; -1.4617085368927413835393736007972620427608489990234375p-221 < 1.506941260537165927502201157039962708950042724609375p-946 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100010 #b0111011000110010100001111101101000111101000000110111)))
(assert (= y (fp #b0 #b00001001101 #b1000000111000110111001110000011100000000000010010110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
