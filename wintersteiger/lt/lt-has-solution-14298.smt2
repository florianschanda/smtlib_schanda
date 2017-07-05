(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5752155042164108778024456114508211612701416015625p-726 {- 2590540330446760 -726 (-4.46234e-219)}
; Y = -1.6172520847986107117577603276004083454608917236328125p33 {- 2779856259092685 33 (-1.38921e+010)}
; -1.5752155042164108778024456114508211612701416015625p-726 < -1.6172520847986107117577603276004083454608917236328125p33 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101001 #b1001001101000001010100101100001011000010111110101000)))
(assert (= y (fp #b1 #b10000100000 #b1001111000000100001110111000110110011001000011001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
