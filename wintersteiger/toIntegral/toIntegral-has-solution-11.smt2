(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.86164281231147210604603969841264188289642333984375 655 {+ 3880494248452412 655 (2.78319e+197)}
; 1.86164281231147210604603969841264188289642333984375 655 I == 1.86164281231147210604603969841264188289642333984375 655
; [HW: 1.86164281231147210604603969841264188289642333984375 655] 

; mpf : + 3880494248452412 655
; mpfd: + 3880494248452412 655 (2.78319e+197) class: Pos. norm. non-zero
; hwf : + 3880494248452412 655 (2.78319e+197) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010001110 #b1101110010010100100111111001001110110110000100111100)))
(assert (= r (fp #b0 #b11010001110 #b1101110010010100100111111001001110110110000100111100)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
