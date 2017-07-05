(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6207448704342428680291732234763912856578826904296875p-281 {+ 2795586367179803 -281 (4.17144e-085)}
; Y = 1.7880832327040476759094644876313395798206329345703125p-816 {+ 3549211353142885 -816 (4.09177e-246)}
; 1.6207448704342428680291732234763912856578826904296875p-281 = 1.7880832327040476759094644876313395798206329345703125p-816 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011100110 #b1001111011101001001000101100010110101100110000011011)))
(assert (= y (fp #b0 #b00011001111 #b1100100110111111110100101001111011111101011001100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
