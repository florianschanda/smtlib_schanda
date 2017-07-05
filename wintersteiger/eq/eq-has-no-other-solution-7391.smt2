(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.942216164133220512866273566032759845256805419921875p-385 {- 4243364365692830 -385 (-2.46462e-116)}
; Y = -1.4596943291494730576829397250548936426639556884765625p326 {- 2070279209461897 326 (-1.99545e+098)}
; -1.942216164133220512866273566032759845256805419921875p-385 = -1.4596943291494730576829397250548936426639556884765625p326 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001111110 #b1111000100110101000101000001101010110110111110011110)))
(assert (= y (fp #b1 #b10101000101 #b0111010110101110100001110000110111011010100010001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
