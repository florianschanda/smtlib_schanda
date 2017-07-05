(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.8651082591711218849894748927908949553966522216796875p544 {+ 3896101233638203 544 (1.07404e+164)}
; Y = 1.0371998785847755808475767480558715760707855224609375p139 {+ 167533359332623 139 (7.22823e+041)}
; 1.8651082591711218849894748927908949553966522216796875p544 = 1.0371998785847755808475767480558715760707855224609375p139 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000011111 #b1101110101110111101111000010000010100011101100111011)))
(assert (= y (fp #b0 #b10010001010 #b0000100110000101111011100110010111101111110100001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
