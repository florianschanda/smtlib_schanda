(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5577767396519679454769402582314796745777130126953125p-661 {- 2512003116852533 -661 (-1.62809e-199)}
; Y = 1.03549268970648267185197255457751452922821044921875p-918 {+ 159844864136492 -918 (4.67316e-277)}
; -1.5577767396519679454769402582314796745777130126953125p-661 < 1.03549268970648267185197255457751452922821044921875p-918 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101101010 #b1000111011001010011101001101011101000110010100110101)))
(assert (= y (fp #b0 #b00001101001 #b0000100100010110000011001000010110001001010100101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
