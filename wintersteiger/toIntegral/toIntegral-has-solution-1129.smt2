(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3463994576458071517066628075554035604000091552734375 159 {+ 1560044468374999 159 (9.83883e+047)}
; 1.3463994576458071517066628075554035604000091552734375 159 I == 1.3463994576458071517066628075554035604000091552734375 159
; [HW: 1.3463994576458071517066628075554035604000091552734375 159] 

; mpf : + 1560044468374999 159
; mpfd: + 1560044468374999 159 (9.83883e+047) class: Pos. norm. non-zero
; hwf : + 1560044468374999 159 (9.83883e+047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011110 #b0101100010101101101000101000010111110000110111010111)))
(assert (= r (fp #b0 #b10010011110 #b0101100010101101101000101000010111110000110111010111)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
