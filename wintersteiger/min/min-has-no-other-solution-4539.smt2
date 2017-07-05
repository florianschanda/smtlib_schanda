(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.291433248520304832851479659439064562320709228515625p221 {+ 1312498669439418 221 (4.35212e+066)}
; Y = 0.1873753754211555655473375736619345843791961669921875p-1022 {+ 843863670925123 -1023 (4.16924e-309)}
; 1.291433248520304832851479659439064562320709228515625p221 m 0.1873753754211555655473375736619345843791961669921875p-1022 == 0.1873753754211555655473375736619345843791961669921875p-1022
; [HW: 0.1873753754211555655473375736619345843791961669921875p-1022] 

; mpf : + 843863670925123 -1023
; mpfd: + 843863670925123 -1023 (4.16924e-309) class: Pos. denorm.
; hwf : + 843863670925123 -1023 (4.16924e-309) class: Pos. denorm.

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011011100 #b0100101010011011010111101000111101011100100110111010)))
(assert (= y (fp #b0 #b00000000000 #b0010111111110111110101010010010110000010011101000011)))
(assert (= r (fp #b0 #b00000000000 #b0010111111110111110101010010010110000010011101000011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
