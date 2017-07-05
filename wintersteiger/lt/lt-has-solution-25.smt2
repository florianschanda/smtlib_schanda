(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.1483246715582529073884643366909585893154144287109375p-739 {- 667994935559599 -739 (-3.97098e-223)}
; Y = 1.6694809550538283193787947311648167669773101806640625p929 {+ 3015074179712065 929 (7.57613e+279)}
; -1.1483246715582529073884643366909585893154144287109375p-739 < 1.6694809550538283193787947311648167669773101806640625p929 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100011100 #b0010010111111000100110110000110110001000010110101111)))
(assert (= y (fp #b0 #b11110100000 #b1010101101100011000110101001011101000000010001000001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
