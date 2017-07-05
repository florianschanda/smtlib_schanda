(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.1320300572700094932088177301920950412750244140625p873 {- 594610516722920 873 (-7.12926e+262)}
; +zero + -1.1320300572700094932088177301920950412750244140625p873 == -1.1320300572700094932088177301920950412750244140625p873
; [HW: -1.1320300572700094932088177301920950412750244140625p873] 

; mpf : - 594610516722920 873
; mpfd: - 594610516722920 873 (-7.12926e+262) class: Neg. norm. non-zero
; hwf : - 594610516722920 873 (-7.12926e+262) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11101101000 #b0010000111001100101110001100101000010000010011101000)))
(assert (= r (fp #b1 #b11101101000 #b0010000111001100101110001100101000010000010011101000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
