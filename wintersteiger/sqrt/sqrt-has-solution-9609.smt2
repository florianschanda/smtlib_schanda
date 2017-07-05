(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5761663845902111891206232030526734888553619384765625p-15 {+ 2594822714943881 -15 (4.81008e-005)}
; 1.5761663845902111891206232030526734888553619384765625p-15 S == 1.775480996569780867133658830425702035427093505859375p-8
; [HW: 1.775480996569780867133658830425702035427093505859375p-8] 

; mpf : + 3492455927184566 -8
; mpfd: + 3492455927184566 -8 (0.00693547) class: Pos. norm. non-zero
; hwf : + 3492455927184566 -8 (0.00693547) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111110000 #b1001001101111111101000111110001011011110100110001001)))
(assert (= r (fp #b0 #b01111110111 #b1100011010000101111011000010111011101111110010110110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
