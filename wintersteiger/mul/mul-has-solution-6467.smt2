(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.904331714059271263295158860273659229278564453125p-633 {+ 4072747970456656 -633 (5.34263e-191)}
; Y = 1.7395000388323522688693856252939440310001373291015625p-757 {+ 3330412099325849 -757 (2.29466e-228)}
; 1.904331714059271263295158860273659229278564453125p-633 * 1.7395000388323522688693856252939440310001373291015625p-757 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000110 #b1110011110000010010010001000000010011110110001010000)))
(assert (= y (fp #b0 #b00100001010 #b1011110101001111110111111110001000101100111110011001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
