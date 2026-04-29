(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.868451455498277624656111584044992923736572265625p-247 {+ 3911157651371408 -247 (8.26177e-075)}
; Y = 1.254783952919241496459790141670964658260345458984375p879 {+ 1147444915427078 879 (5.05749e+264)}
; 1.868451455498277624656111584044992923736572265625p-247 < 1.254783952919241496459790141670964658260345458984375p879 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100001000 #b1101111001010010110101011010011110000111010110010000)))
(assert (= y (fp #b0 #b11101101110 #b0100000100111001100001010110100101010101011100000110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
