(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.030182450240690883447314263321459293365478515625p1018 {+ 135929671657104 1018 (2.89367e+306)}
; Y = 1.604315956881557259094961409573443233966827392578125p-267 {+ 2721597118225826 -267 (6.76521e-081)}
; 1.030182450240690883447314263321459293365478515625p1018 M 1.604315956881557259094961409573443233966827392578125p-267 == 1.030182450240690883447314263321459293365478515625p1018
; [HW: 1.030182450240690883447314263321459293365478515625p1018] 

; mpf : + 135929671657104 1018
; mpfd: + 135929671657104 1018 (2.89367e+306) class: Pos. norm. non-zero
; hwf : + 135929671657104 1018 (2.89367e+306) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111111001 #b0000011110111010000010010111110010110010011010010000)))
(assert (= y (fp #b0 #b01011110100 #b1001101010110100011100110101011101000001110110100010)))
(assert (= r (fp #b0 #b11111111001 #b0000011110111010000010010111110010110010011010010000)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
