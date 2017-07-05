(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.81700131333723380322453522239811718463897705078125p-760 {+ 3679446810306772 -760 (2.99612e-229)}
; Y = 1.8339391444786716789394631632603704929351806640625p144 {+ 3755728020323816 144 (4.08982e+043)}
; 1.81700131333723380322453522239811718463897705078125p-760 + 1.8339391444786716789394631632603704929351806640625p144 == 1.8339391444786719009840680882916785776615142822265625p144
; [HW: 1.8339391444786719009840680882916785776615142822265625p144] 

; mpf : + 3755728020323817 144
; mpfd: + 3755728020323817 144 (4.08982e+043) class: Pos. norm. non-zero
; hwf : + 3755728020323817 144 (4.08982e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100000111 #b1101000100100110111111111000000110010010100011010100)))
(assert (= y (fp #b0 #b10010001111 #b1101010101111101000010010010100001100011110111101000)))
(assert (= r (fp #b0 #b10010001111 #b1101010101111101000010010010100001100011110111101001)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
