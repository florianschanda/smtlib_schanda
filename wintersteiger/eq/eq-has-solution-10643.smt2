(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.412891126503303507178088693763129413127899169921875p-1003 {+ 1859496323464862 -1003 (1.64825e-302)}
; Y = 1.371309091447763695015282792155630886554718017578125p-121 {+ 1672227485883426 -121 (5.15829e-037)}
; 1.412891126503303507178088693763129413127899169921875p-1003 = 1.371309091447763695015282792155630886554718017578125p-121 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000010100 #b0110100110110011001110111001110100100011111010011110)))
(assert (= y (fp #b0 #b01110000110 #b0101111100001110000111001101010001111001110000100010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
