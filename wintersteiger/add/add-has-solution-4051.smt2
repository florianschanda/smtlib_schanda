(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = -1.3625986201017123988776802434585988521575927734375p728 {- 1632999010375128 728 (-1.924e+219)}
; +zero + -1.3625986201017123988776802434585988521575927734375p728 == -1.3625986201017123988776802434585988521575927734375p728
; [HW: -1.3625986201017123988776802434585988521575927734375p728] 

; mpf : - 1632999010375128 728
; mpfd: - 1632999010375128 728 (-1.924e+219) class: Neg. norm. non-zero
; hwf : - 1632999010375128 728 (-1.924e+219) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b11011010111 #b0101110011010011010000110101111011101001010111011000)))
(assert (= r (fp #b1 #b11011010111 #b0101110011010011010000110101111011101001010111011000)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
