(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4884054985203911680713417808874510228633880615234375p-64 {+ 2199582821142135 -64 (8.06866e-020)}
; Y = 1.5928893269159811740820487102610059082508087158203125p1012 {+ 2670136151770757 1012 (6.99103e+304)}
; 1.4884054985203911680713417808874510228633880615234375p-64 + 1.5928893269159811740820487102610059082508087158203125p1012 == 1.592889326915981396126653635292313992977142333984375p1012
; [HW: 1.592889326915981396126653635292313992977142333984375p1012] 

; mpf : + 2670136151770758 1012
; mpfd: + 2670136151770758 1012 (6.99103e+304) class: Pos. norm. non-zero
; hwf : + 2670136151770758 1012 (6.99103e+304) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110111111 #b0111110100001000001001001000101101010100111001110111)))
(assert (= y (fp #b0 #b11111110011 #b1001011111000111100110000100110101000000011010000101)))
(assert (= r (fp #b0 #b11111110011 #b1001011111000111100110000100110101000000011010000110)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
