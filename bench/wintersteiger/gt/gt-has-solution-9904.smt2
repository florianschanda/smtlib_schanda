(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5575654708596100572748355261865071952342987060546875p-561 {+ 2511051646797995 -561 (2.06357e-169)}
; Y = -1.8436197536516714112764248056919313967227935791015625p371 {- 3799325608188057 371 (-8.86747e+111)}
; 1.5575654708596100572748355261865071952342987060546875p-561 > -1.8436197536516714112764248056919313967227935791015625p371 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111001110 #b1000111010111100100111000101011010111000100010101011)))
(assert (= y (fp #b1 #b10101110010 #b1101011111110111011101101101010000110001100010011001)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
