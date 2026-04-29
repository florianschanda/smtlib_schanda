(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.138943162395315678026008754386566579341888427734375 928 {- 625744374389222 928 (-2.58427e+279)}
; -1.138943162395315678026008754386566579341888427734375 928 I == -1.138943162395315678026008754386566579341888427734375 928
; [HW: -1.138943162395315678026008754386566579341888427734375 928] 

; mpf : - 625744374389222 928
; mpfd: - 625744374389222 928 (-2.58427e+279) class: Neg. norm. non-zero
; hwf : - 625744374389222 928 (-2.58427e+279) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110011111 #b0010001110010001110001110111001001111101100111100110)))
(assert (= r (fp #b1 #b11110011111 #b0010001110010001110001110111001001111101100111100110)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
