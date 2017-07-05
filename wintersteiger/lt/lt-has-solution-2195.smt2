(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5672455826857853988798296995810233056545257568359375p-554 {- 2554646994811263 -554 (-2.65778e-167)}
; Y = 1.006473784292859274813736192299984395503997802734375p-755 {+ 29155332528998 -755 (5.31075e-228)}
; -1.5672455826857853988798296995810233056545257568359375p-554 < 1.006473784292859274813736192299984395503997802734375p-755 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111010101 #b1001000100110111000000011010101001101111100101111111)))
(assert (= y (fp #b0 #b00100001100 #b0000000110101000010001000001001111010001101101100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
