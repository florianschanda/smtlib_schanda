(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.098302910750069916190341245965100824832916259765625p247 {- 442716952223450 247 (-2.48388e+074)}
; Y = 1.7998905959498470163993033565930090844631195068359375p787 {+ 3602386989856895 787 (1.46505e+237)}
; -1.098302910750069916190341245965100824832916259765625p247 * 1.7998905959498470163993033565930090844631195068359375p787 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011110110 #b0001100100101010011000010010101011000101111011011010)))
(assert (= y (fp #b0 #b11100010010 #b1100110011000101101000010100110111111011100001111111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
