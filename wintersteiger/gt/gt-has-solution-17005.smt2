(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0972165782018448165757718015811406075954437255859375p-830 {- 437824545364063 -830 (-1.53248e-250)}
; Y = 1.5172001263985690489022317706258036196231842041015625p837 {+ 2329262296524569 837 (1.39043e+252)}
; -1.0972165782018448165757718015811406075954437255859375p-830 > 1.5172001263985690489022317706258036196231842041015625p837 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011000001 #b0001100011100011001011111000100000000001100001011111)))
(assert (= y (fp #b0 #b11101000100 #b1000010001100111001110100011110001011110011100011001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
