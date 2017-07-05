(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.859714394284135874357843931647948920726776123046875p331 {+ 3871809425743086 331 (8.13532e+099)}
; Y = 1.364442855044472935333033092319965362548828125p898 {+ 1641304706176128 898 (2.88331e+270)}
; 1.859714394284135874357843931647948920726776123046875p331 = 1.364442855044472935333033092319965362548828125p898 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101001010 #b1101110000010110001111100001011101011001110011101110)))
(assert (= y (fp #b0 #b11110000001 #b0101110101001100001000000111111110101101010010000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
