(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.202806599891477201680345388012938201427459716796875p683 {- 913359727699534 683 (-4.82706e+205)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.202806599891477201680345388012938201427459716796875p683 M -oo == -1.202806599891477201680345388012938201427459716796875p683
; [HW: -1.202806599891477201680345388012938201427459716796875p683] 

; mpf : - 913359727699534 683
; mpfd: - 913359727699534 683 (-4.82706e+205) class: Neg. norm. non-zero
; hwf : - 913359727699534 683 (-4.82706e+205) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010101010 #b0011001111101011001000100010000111110010011001001110)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b1 #b11010101010 #b0011001111101011001000100010000111110010011001001110)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
