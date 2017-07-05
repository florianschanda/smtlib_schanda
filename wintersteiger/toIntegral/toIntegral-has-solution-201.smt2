(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3516829414446973611774183154921047389507293701171875 239 {- 1583839164042899 239 (-1.19411e+072)}
; -1.3516829414446973611774183154921047389507293701171875 239 I == -1.3516829414446973611774183154921047389507293701171875 239
; [HW: -1.3516829414446973611774183154921047389507293701171875 239] 

; mpf : - 1583839164042899 239
; mpfd: - 1583839164042899 239 (-1.19411e+072) class: Neg. norm. non-zero
; hwf : - 1583839164042899 239 (-1.19411e+072) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011101110 #b0101101000000111111001001010110000010000111010010011)))
(assert (= r (fp #b1 #b10011101110 #b0101101000000111111001001010110000010000111010010011)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
