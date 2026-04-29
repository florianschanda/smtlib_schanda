(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1508850777320402958281420069397427141666412353515625p820 {+ 679525979849785 820 (8.0469e+246)}
; 1.1508850777320402958281420069397427141666412353515625p820 S == 1.072793119726278110448447478120215237140655517578125p410
; [HW: 1.072793119726278110448447478120215237140655517578125p410] 

; mpf : + 327831066874402 410
; mpfd: + 327831066874402 410 (2.83671e+123) class: Pos. norm. non-zero
; hwf : + 327831066874402 410 (2.83671e+123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110011 #b0010011010100000011001111000101001010000010000111001)))
(assert (= r (fp #b0 #b10110011001 #b0001001010100010100100011110010010011001001000100010)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
