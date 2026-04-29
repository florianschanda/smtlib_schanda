(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0984680100527162149859350392944179475307464599609375p170 {+ 443460493381327 170 (1.64394e+051)}
; 1.0984680100527162149859350392944179475307464599609375p170 S == 1.048078246149931391784093648311682045459747314453125p85
; [HW: 1.048078246149931391784093648311682045459747314453125p85] 

; mpf : + 216525171445458 85
; mpfd: + 216525171445458 85 (4.05456e+025) class: Pos. norm. non-zero
; hwf : + 216525171445458 85 (4.05456e+025) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010101001 #b0001100100110101001100110001001011100000111011001111)))
(assert (= r (fp #b0 #b10001010100 #b0000110001001110110110110001111011011100111011010010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
