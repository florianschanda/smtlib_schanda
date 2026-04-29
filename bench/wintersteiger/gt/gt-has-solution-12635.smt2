(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.434101297895808979632192858844064176082611083984375p116 {+ 1955018443444614 116 (1.1914e+035)}
; Y = -1.1772748704635709326993264767224900424480438232421875p365 {- 798375040561891 365 (-8.84762e+109)}
; 1.434101297895808979632192858844064176082611083984375p116 > -1.1772748704635709326993264767224900424480438232421875p365 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001110011 #b0110111100100001010000110011110110011101000110000110)))
(assert (= y (fp #b1 #b10101101100 #b0010110101100001111000101100101100001011001011100011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
