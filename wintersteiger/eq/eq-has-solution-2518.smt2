(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.182027641401670603471529830130748450756072998046875p-726 {+ 819779617987694 -726 (3.3485e-219)}
; Y = -1.3824853331841493453424618564895354211330413818359375p-513 {- 1722560804002815 -513 (-5.15552e-155)}
; 1.182027641401670603471529830130748450756072998046875p-726 = -1.3824853331841493453424618564895354211330413818359375p-513 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100101001 #b0010111010011001010111010000111011001001110001101110)))
(assert (= y (fp #b1 #b00111111110 #b0110000111101010100011110000110100111001101111111111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
