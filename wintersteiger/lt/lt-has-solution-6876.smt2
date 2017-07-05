(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.00200663210234974798140683560632169246673583984375p-643 {+ 9037067588412 -643 (2.74526e-194)}
; Y = -1.27534845251440831503941808477975428104400634765625p524 {- 1240059188140932 524 (-7.00401e+157)}
; 1.00200663210234974798140683560632169246673583984375p-643 < -1.27534845251440831503941808477975428104400634765625p524 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101111100 #b0000000010000011100000011011001101000001001100111100)))
(assert (= y (fp #b1 #b11000001011 #b0100011001111101001111000111011010001101101110000100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
