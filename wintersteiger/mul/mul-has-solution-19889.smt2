(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.8761398965569380248297193247708491981029510498046875p-886 {+ 3945783311658251 -886 (3.63655e-267)}
; Y = 1.9986425618332310794045270085916854441165924072265625p-237 {+ 4497486269348457 -237 (9.04953e-072)}
; 1.8761398965569380248297193247708491981029510498046875p-886 * 1.9986425618332310794045270085916854441165924072265625p-237 == 0.0000000000000002220446049250313080847263336181640625p-1022
; [HW: 0.0000000000000002220446049250313080847263336181640625p-1022] 

; mpf : + 1 -1023
; mpfd: + 1 -1023 (4.94066e-324) class: Pos. denorm.
; hwf : + 1 -1023 (4.94066e-324) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001001 #b1110000001001010101101000100101001101110110100001011)))
(assert (= y (fp #b0 #b01100010010 #b1111111110100111000010011111011101110111101001101001)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000001)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
