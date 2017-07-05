(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.07066491396982943484772476949729025363922119140625p126 {+ 318246480222692 126 (9.10821e+037)}
; Y = -1.66260159655108186171901252237148582935333251953125p71 {- 2984092303322548 71 (-3.92571e+021)}
; 1.07066491396982943484772476949729025363922119140625p126 < -1.66260159655108186171901252237148582935333251953125p71 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111101 #b0001001000010111000110001000011001111001100111100100)))
(assert (= y (fp #b1 #b10001000110 #b1010100110100000010000100001101101110110110110110100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
