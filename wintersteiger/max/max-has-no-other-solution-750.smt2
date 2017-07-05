(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.136559790219884735762434502248652279376983642578125p464 {- 615010620348066 464 (-5.4139e+139)}
; -oo M -1.136559790219884735762434502248652279376983642578125p464 == -1.136559790219884735762434502248652279376983642578125p464
; [HW: -1.136559790219884735762434502248652279376983642578125p464] 

; mpf : - 615010620348066 464
; mpfd: - 615010620348066 464 (-5.4139e+139) class: Neg. norm. non-zero
; hwf : - 615010620348066 464 (-5.4139e+139) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b10111001111 #b0010001011110101100101010001100011110001011010100010)))
(assert (= r (fp #b1 #b10111001111 #b0010001011110101100101010001100011110001011010100010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
