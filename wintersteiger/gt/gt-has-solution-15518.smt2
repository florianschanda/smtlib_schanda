(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.19998309167030381416907403036020696163177490234375p-216 {- 900643777126780 -216 (-1.13945e-065)}
; Y = -1.31109467372785370997689824434928596019744873046875p220 {- 1401045856677708 220 (-2.20919e+066)}
; -1.19998309167030381416907403036020696163177490234375p-216 > -1.31109467372785370997689824434928596019744873046875p220 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100100111 #b0011001100110010000101111000011001111010000101111100)))
(assert (= y (fp #b1 #b10011011011 #b0100111110100011111001101000100110011110111101001100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
