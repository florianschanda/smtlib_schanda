(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.114831198983169624483480220078490674495697021484375p237 {- 517153744951110 237 (-2.46217e+071)}
; Y = -1.1687732973696258742535292185493744909763336181640625p-527 {- 760087359143937 -527 (-2.66025e-159)}
; -1.114831198983169624483480220078490674495697021484375p237 = -1.1687732973696258742535292185493744909763336181640625p-527 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011101100 #b0001110101100101100100111101010000110001011101000110)))
(assert (= y (fp #b1 #b00111110000 #b0010101100110100101110100001000010100100000000000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
