(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.184679221127620696307758407783694565296173095703125p820 {+ 831721271453426 820 (8.28318e+246)}
; Y = 1.2979282642484901710844269473454914987087249755859375p267 {+ 1341749619852639 267 (3.07794e+080)}
; 1.184679221127620696307758407783694565296173095703125p820 = 1.2979282642484901710844269473454914987087249755859375p267 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100110011 #b0010111101000111001000110010111011111110011011110010)))
(assert (= y (fp #b0 #b10100001010 #b0100110001000101000001101101011110000000010101011111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
