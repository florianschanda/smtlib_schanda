(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.075101120665104215134988407953642308712005615234375p1003 {+ 338225379042470 1003 (9.21584e+301)}
; 1.075101120665104215134988407953642308712005615234375p1003 S == 1.4663567919610180911860197738860733807086944580078125p501
; [HW: 1.4663567919610180911860197738860733807086944580078125p501] 

; mpf : + 2100284274497341 501
; mpfd: + 2100284274497341 501 (9.59992e+150) class: Pos. norm. non-zero
; hwf : + 2100284274497341 501 (9.59992e+150) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101010 #b0001001100111001110100111011100100100110010010100110)))
(assert (= r (fp #b0 #b10111110100 #b0111011101100011001010001010000110111101011100111101)))
(assert (= (fp.sqrt roundTowardPositive x) r))
(check-sat)
(exit)
