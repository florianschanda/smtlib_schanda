(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6683191152989682581875285904970951378345489501953125 939 {+ 3009841718625013 939 (7.75256e+282)}
; 1.6683191152989682581875285904970951378345489501953125 939 I == 1.6683191152989682581875285904970951378345489501953125 939
; [HW: 1.6683191152989682581875285904970951378345489501953125 939] 

; mpf : + 3009841718625013 939
; mpfd: + 3009841718625013 939 (7.75256e+282) class: Pos. norm. non-zero
; hwf : + 3009841718625013 939 (7.75256e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101010 #b1010101100010110111101100010011110000000001011110101)))
(assert (= r (fp #b0 #b11110101010 #b1010101100010110111101100010011110000000001011110101)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
