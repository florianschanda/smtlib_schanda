(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0868499128220736604788498880225233733654022216796875p-359 {- 391137235022651 -359 (-9.25553e-109)}
; Y = 1.4608451237423658586322972041671164333820343017578125p478 {+ 2075461927561629 478 (1.1401e+144)}
; -1.0868499128220736604788498880225233733654022216796875p-359 = 1.4608451237423658586322972041671164333820343017578125p478 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010011000 #b0001011000111011110010111011111100111011001100111011)))
(assert (= y (fp #b0 #b10111011101 #b0111010111111001111100100010111011111110100110011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
