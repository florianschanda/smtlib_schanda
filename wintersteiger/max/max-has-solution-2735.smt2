(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7186059826976720632529804788646288216114044189453125p-262 {+ 3236313635903445 -262 (2.31909e-079)}
; Y = 1.1991268268004551256211698273546062409877777099609375p-285 {+ 896787502977999 -285 (1.92893e-086)}
; 1.7186059826976720632529804788646288216114044189453125p-262 M 1.1991268268004551256211698273546062409877777099609375p-285 == 1.7186059826976720632529804788646288216114044189453125p-262
; [HW: 1.7186059826976720632529804788646288216114044189453125p-262] 

; mpf : + 3236313635903445 -262
; mpfd: + 3236313635903445 -262 (2.31909e-079) class: Pos. norm. non-zero
; hwf : + 3236313635903445 -262 (2.31909e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011111001 #b1011011111110110100011111100101001100101011111010101)))
(assert (= y (fp #b0 #b01011100010 #b0011001011111001111110011100100011011101001111001111)))
(assert (= r (fp #b0 #b01011111001 #b1011011111110110100011111100101001100101011111010101)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
