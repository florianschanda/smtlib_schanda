(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2024418735161026550173346549854613840579986572265625p897 {+ 911717146131305 897 (1.27049e+270)}
; 1.2024418735161026550173346549854613840579986572265625p897 S == 1.5507687600129831384521139625576324760913848876953125p448
; [HW: 1.5507687600129831384521139625576324760913848876953125p448] 

; mpf : + 2480441982361781 448
; mpfd: + 2480441982361781 448 (1.12716e+135) class: Pos. norm. non-zero
; hwf : + 2480441982361781 448 (1.12716e+135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000000 #b0011001111010011001110110000101000010111101101101001)))
(assert (= r (fp #b0 #b10110111111 #b1000110011111111001011100111001111101010000010110101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
