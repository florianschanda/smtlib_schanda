(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.689816873761473825510392998694442212581634521484375p-566 {+ 3106659015626054 -566 (6.9962e-171)}
; 1.689816873761473825510392998694442212581634521484375p-566 S == 1.29992956492322075945367032545618712902069091796875p-283
; [HW: 1.29992956492322075945367032545618712902069091796875p-283] 

; mpf : + 1350762676825612 -283
; mpfd: + 1350762676825612 -283 (8.36433e-086) class: Pos. norm. non-zero
; hwf : + 1350762676825612 -283 (8.36433e-086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111001001 #b1011000010010111110101101011000100001000110101000110)))
(assert (= r (fp #b0 #b01011100100 #b0100110011001000001011110001100001110010111000001100)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
