(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.72899870976355085616660289815627038478851318359375p734 {- 3283118317644700 734 (-1.56247e+221)}
; Y = -1.407560022322582593545803320012055337429046630859375p-939 {- 1835487164663094 -939 (-3.02901e-283)}
; -1.72899870976355085616660289815627038478851318359375p734 > -1.407560022322582593545803320012055337429046630859375p-939 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011011101 #b1011101010011111101010001101000101000010101110011100)))
(assert (= y (fp #b1 #b00001010100 #b0110100001010101110110101000011100001000010100110110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
