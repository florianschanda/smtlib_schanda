(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3853348156984861550000687202555127441883087158203125p-660 {+ 1735393732392581 -660 (2.89573e-199)}
; Y = 1.5969139775173035733502047150977887213230133056640625p-974 {+ 2688261566719169 -974 (1.00015e-293)}
; 1.3853348156984861550000687202555127441883087158203125p-660 < 1.5969139775173035733502047150977887213230133056640625p-974 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101101011 #b0110001010100101010011010110111101101111011010000101)))
(assert (= y (fp #b0 #b00000110001 #b1001100011001111010110101011101111110110010011000001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
