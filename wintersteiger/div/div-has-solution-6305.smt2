(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7320472022090138697336669793003238737583160400390625p128 {- 3296847507086129 128 (-5.89385e+038)}
; Y = +zero {+ 0 -1023 (0)}
; -1.7320472022090138697336669793003238737583160400390625p128 / +zero == -oo
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
(assert (= x (fp #b1 #b10001111111 #b1011101101100111011100100000100010011101101100110001)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
