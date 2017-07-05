(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9611441568058121109885405530803836882114410400390625p-159 {+ 4328608466439985 -159 (2.68374e-048)}
; Y = -1.8493335168057625228499318836838938295841217041015625p142 {- 3825058109799705 142 (-1.03104e+043)}
; 1.9611441568058121109885405530803836882114410400390625p-159 m -1.8493335168057625228499318836838938295841217041015625p142 == -1.8493335168057625228499318836838938295841217041015625p142
; [HW: -1.8493335168057625228499318836838938295841217041015625p142] 

; mpf : - 3825058109799705 142
; mpfd: - 3825058109799705 142 (-1.03104e+043) class: Neg. norm. non-zero
; hwf : - 3825058109799705 142 (-1.03104e+043) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101100000 #b1111011000001101100010110010000000111000111100110001)))
(assert (= y (fp #b1 #b10010001101 #b1101100101101101111010111101111000010011110100011001)))
(assert (= r (fp #b1 #b10010001101 #b1101100101101101111010111101111000010011110100011001)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
