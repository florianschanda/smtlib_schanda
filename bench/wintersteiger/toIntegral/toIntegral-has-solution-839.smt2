(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.679741420966126330682754996814765036106109619140625 660 {+ 3061283210171338 660 (8.03599e+198)}
; 1.679741420966126330682754996814765036106109619140625 660 I == 1.679741420966126330682754996814765036106109619140625 660
; [HW: 1.679741420966126330682754996814765036106109619140625 660] 

; mpf : + 3061283210171338 660
; mpfd: + 3061283210171338 660 (8.03599e+198) class: Pos. norm. non-zero
; hwf : + 3061283210171338 660 (8.03599e+198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010010011 #b1010111000000011100010001010010011001001001111001010)))
(assert (= r (fp #b0 #b11010010011 #b1010111000000011100010001010010011001001001111001010)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
