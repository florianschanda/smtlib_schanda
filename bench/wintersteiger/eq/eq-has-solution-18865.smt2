(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3400960259353407177940198380383662879467010498046875p-360 {+ 1531656335672587 -360 (5.70608e-109)}
; Y = 1.0129124343026145727009179609012790024280548095703125p-203 {+ 58152434313701 -203 (7.87921e-062)}
; 1.3400960259353407177940198380383662879467010498046875p-360 = 1.0129124343026145727009179609012790024280548095703125p-203 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010111 #b0101011100010000100010000111110011100100010100001011)))
(assert (= y (fp #b0 #b01100110100 #b0000001101001110001110101011001100001010100111100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
