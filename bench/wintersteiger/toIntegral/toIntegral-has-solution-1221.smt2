(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.280172424321595059382161707617342472076416015625 648 {- 1261784425774224 648 (-1.49522e+195)}
; -1.280172424321595059382161707617342472076416015625 648 I == -1.280172424321595059382161707617342472076416015625 648
; [HW: -1.280172424321595059382161707617342472076416015625 648] 

; mpf : - 1261784425774224 648
; mpfd: - 1261784425774224 648 (-1.49522e+195) class: Neg. norm. non-zero
; hwf : - 1261784425774224 648 (-1.49522e+195) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010000111 #b0100011110111001011000010100011110110011110010010000)))
(assert (= r (fp #b1 #b11010000111 #b0100011110111001011000010100011110110011110010010000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
