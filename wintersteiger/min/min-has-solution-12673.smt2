(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.045922074156034664582648474606685340404510498046875p-514 {- 206814636057198 -514 (-1.95021e-155)}
; Y = 1.5664462464471291536227681717718951404094696044921875p-769 {+ 2551047104424707 -769 (5.04486e-232)}
; -1.045922074156034664582648474606685340404510498046875p-514 m 1.5664462464471291536227681717718951404094696044921875p-769 == -1.045922074156034664582648474606685340404510498046875p-514
; [HW: -1.045922074156034664582648474606685340404510498046875p-514] 

; mpf : - 206814636057198 -514
; mpfd: - 206814636057198 -514 (-1.95021e-155) class: Neg. norm. non-zero
; hwf : - 206814636057198 -514 (-1.95021e-155) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111101 #b0000101111000001100011001000111010101010001001101110)))
(assert (= y (fp #b0 #b00011111110 #b1001000100000010100111110000011101101110101100000011)))
(assert (= r (fp #b1 #b00111111101 #b0000101111000001100011001000111010101010001001101110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
