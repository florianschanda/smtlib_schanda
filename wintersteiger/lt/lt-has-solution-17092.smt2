(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5977337002283189537621410636347718536853790283203125p-316 {+ 2691953269615045 -316 (1.19681e-095)}
; Y = 1.6724616154616978036528962547890841960906982421875p12 {+ 3028497880814264 12 (6850.4)}
; 1.5977337002283189537621410636347718536853790283203125p-316 < 1.6724616154616978036528962547890841960906982421875p12 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011000011 #b1001100100000101000100110110011000110010100111000101)))
(assert (= y (fp #b0 #b10000001011 #b1010110000100110011100011100011000111001001010111000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
