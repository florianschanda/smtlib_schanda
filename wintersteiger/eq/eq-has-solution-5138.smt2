(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.23352485610187212472510509542189538478851318359375p-619 {+ 1051702454922140 -619 (5.66997e-187)}
; Y = -1.2110695625094383132136499625630676746368408203125p728 {- 950572803066760 728 (-1.71004e+219)}
; 1.23352485610187212472510509542189538478851318359375p-619 = -1.2110695625094383132136499625630676746368408203125p728 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110010100 #b0011101111001000010010001111001111000010101110011100)))
(assert (= y (fp #b1 #b11011010111 #b0011011000001000101001111010010000101000101110001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
