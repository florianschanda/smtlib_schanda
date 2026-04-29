(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.1161492076077170754189182844129391014575958251953125 65 {+ 523089528101493 65 (4.11786e+019)}
; 1.1161492076077170754189182844129391014575958251953125 65 I == 1.1161492076077170754189182844129391014575958251953125 65
; [HW: 1.1161492076077170754189182844129391014575958251953125 65] 

; mpf : + 523089528101493 65
; mpfd: + 523089528101493 65 (4.11786e+019) class: Pos. norm. non-zero
; hwf : + 523089528101493 65 (4.11786e+019) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001000000 #b0001110110111011111101000101100000100001101001110101)))
(assert (= r (fp #b0 #b10001000000 #b0001110110111011111101000101100000100001101001110101)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
