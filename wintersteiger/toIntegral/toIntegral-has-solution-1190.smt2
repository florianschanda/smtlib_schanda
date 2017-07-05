(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4601548835976212448173328084521926939487457275390625 175 {- 2072353362302961 175 (-6.99275e+052)}
; -1.4601548835976212448173328084521926939487457275390625 175 I == -1.4601548835976212448173328084521926939487457275390625 175
; [HW: -1.4601548835976212448173328084521926939487457275390625 175] 

; mpf : - 2072353362302961 175
; mpfd: - 2072353362302961 175 (-6.99275e+052) class: Neg. norm. non-zero
; hwf : - 2072353362302961 175 (-6.99275e+052) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101110 #b0111010111001100101101011110000000100101011111110001)))
(assert (= r (fp #b1 #b10010101110 #b0111010111001100101101011110000000100101011111110001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
