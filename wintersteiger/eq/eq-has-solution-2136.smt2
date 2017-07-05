(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3916350921686044816993899075896479189395904541015625p-632 {+ 1763767655155737 -632 (7.80851e-191)}
; Y = -1.4207959131301992616869256380596198141574859619140625p414 {- 1895096317572193 414 (-6.01104e+124)}
; 1.3916350921686044816993899075896479189395904541015625p-632 = -1.4207959131301992616869256380596198141574859619140625p414 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110000111 #b0110010001000010001100101000100011010100100000011001)))
(assert (= y (fp #b1 #b10110011101 #b0110101110111001010001111110110100101111010001100001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
