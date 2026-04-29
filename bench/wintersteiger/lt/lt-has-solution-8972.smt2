(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5140655454361418019715301852556876838207244873046875p-409 {- 2315145398870219 -409 (-1.14519e-123)}
; Y = 1.5220235183217478702744074325892142951488494873046875p580 {+ 2350984922592459 580 (6.02308e+174)}
; -1.5140655454361418019715301852556876838207244873046875p-409 < 1.5220235183217478702744074325892142951488494873046875p580 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001100110 #b1000001110011001110011001011000110100110000011001011)))
(assert (= y (fp #b0 #b11001000011 #b1000010110100011010101010101001011101111010011001011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
