(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.893011872628145741970229209982790052890777587890625p899 {+ 4021767936805546 899 (8.00054e+270)}
; Y = -1.8014191577861333737331506199552677571773529052734375p-170 {- 3609271020373207 -170 (-1.20369e-051)}
; 1.893011872628145741970229209982790052890777587890625p899 = -1.8014191577861333737331506199552677571773529052734375p-170 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110000010 #b1110010010011100011011010001001111100000101010101010)))
(assert (= y (fp #b1 #b01101010101 #b1100110100101001110011100101000100010100010011010111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
