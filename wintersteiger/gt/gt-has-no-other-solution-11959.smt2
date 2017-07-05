(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.696446201604459247391787357628345489501953125p-307 {+ 3136514854029440 -307 (6.50626e-093)}
; Y = -1.508305426407145599654313627979718148708343505859375p-754 {- 2289204128957622 -754 (-1.59174e-227)}
; 1.696446201604459247391787357628345489501953125p-307 > -1.508305426407145599654313627979718148708343505859375p-754 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001100 #b1011001001001010010011000101101101010000100010000000)))
(assert (= y (fp #b1 #b00100001101 #b1000001000100000010011011110111011001100010010110110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
