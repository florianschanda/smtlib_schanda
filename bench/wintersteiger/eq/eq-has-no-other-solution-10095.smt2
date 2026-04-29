(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4265698188773778820603865824523381888866424560546875p-149 {- 1921099677343659 -149 (-1.99905e-045)}
; Y = 1.3844802678456125111239316538558341562747955322265625p701 {+ 1731545191000809 701 (1.45651e+211)}
; -1.4265698188773778820603865824523381888866424560546875p-149 = 1.3844802678456125111239316538558341562747955322265625p701 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101010 #b0110110100110011101011011111110110001001111110101011)))
(assert (= y (fp #b0 #b11010111100 #b0110001001101101010011001000000001011010101011101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
