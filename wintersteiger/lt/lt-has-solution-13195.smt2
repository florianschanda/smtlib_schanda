(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3866667887373937961825731690623797476291656494140625p164 {+ 1741392405674273 164 (3.24259e+049)}
; Y = 1.0792766051924209680379362907842732965946197509765625p-965 {+ 357030089603785 -965 (3.46088e-291)}
; 1.3866667887373937961825731690623797476291656494140625p164 < 1.0792766051924209680379362907842732965946197509765625p-965 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010100011 #b0110001011111100100110000011110000010011100100100001)))
(assert (= y (fp #b0 #b00000111010 #b0001010001001011011110001011101010100011101011001001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
