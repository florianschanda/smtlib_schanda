(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6714722068339329386077451999881304800510406494140625p81 {+ 3024041980486945 81 (4.04137e+024)}
; 1.6714722068339329386077451999881304800510406494140625p81 S == 1.8283720665301868013585817607236094772815704345703125p40
; [HW: 1.8283720665301868013585817607236094772815704345703125p40] 

; mpf : + 3730656130149477 40
; mpfd: + 3730656130149477 40 (2.01032e+012) class: Pos. norm. non-zero
; hwf : + 3730656130149477 40 (2.01032e+012) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001010000 #b1010101111100101100110100100000010000110010100100001)))
(assert (= r (fp #b0 #b10000100111 #b1101010000010000001100010001011010101010110001100101)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
