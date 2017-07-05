(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3863207177265639558072507497854530811309814453125p-760 {+ 1739833840398856 -760 (2.28595e-229)}
; Y = -1.3061507759418538032747392207966186106204986572265625p375 {- 1378780520450921 375 (-1.00518e+113)}
; 1.3863207177265639558072507497854530811309814453125p-760 / -1.3061507759418538032747392207966186106204986572265625p375 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100000111 #b0110001011100101111010100010000001100111001000001000)))
(assert (= y (fp #b1 #b10101110110 #b0100111001011111111001011011001001010000101101101001)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
