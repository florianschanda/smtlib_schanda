(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.63379019421354154673053926671855151653289794921875p-323 {+ 2854337282491180 -323 (9.5611e-098)}
; Y = -1.2829556316291090833914267932414077222347259521484375p-444 {- 1274318877167239 -444 (-2.82419e-134)}
; 1.63379019421354154673053926671855151653289794921875p-323 < -1.2829556316291090833914267932414077222347259521484375p-444 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010111100 #b1010001001000000000100101111110010101100001100101100)))
(assert (= y (fp #b1 #b01001000011 #b0100100001101111110001111100000000010000111010000111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
