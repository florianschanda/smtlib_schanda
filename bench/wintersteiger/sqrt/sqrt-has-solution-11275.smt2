(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.64106256556360197151889224187470972537994384765625p237 {+ 2887089131393412 237 (3.62438e+071)}
; 1.64106256556360197151889224187470972537994384765625p237 S == 1.81166363630978821674943901598453521728515625p118
; [HW: 1.81166363630978821674943901598453521728515625p118] 

; mpf : + 3655408050034944 118
; mpfd: + 3655408050034944 118 (6.02029e+035) class: Pos. norm. non-zero
; hwf : + 3655408050034944 118 (6.02029e+035) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011101100 #b1010010000011100101011010010000111001001000110000100)))
(assert (= r (fp #b0 #b10001110101 #b1100111111001001001100000010010101001101100100000000)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
