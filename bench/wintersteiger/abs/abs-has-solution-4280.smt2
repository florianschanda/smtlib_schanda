(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.666010786955947509113684645853936672210693359375p-225 {+ 2999445931959536 -225 (3.08979e-068)}
; 1.666010786955947509113684645853936672210693359375p-225 | == 1.666010786955947509113684645853936672210693359375p-225
; [HW: 1.666010786955947509113684645853936672210693359375p-225] 

; mpf : + 2999445931959536 -225
; mpfd: + 2999445931959536 -225 (3.08979e-068) class: Pos. norm. non-zero
; hwf : + 2999445931959536 -225 (3.08979e-068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100011110 #b1010101001111111101011101101010011000010010011110000)))
(assert (= r (fp #b0 #b01100011110 #b1010101001111111101011101101010011000010010011110000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
