(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.667786018099419731441912517766468226909637451171875p306 {+ 3007440862275774 306 (2.1743e+092)}
; Y = 1.8523568425159828709780640565440990030765533447265625p274 {+ 3838673958341673 274 (5.62268e+082)}
; 1.667786018099419731441912517766468226909637451171875p306 = 1.8523568425159828709780640565440990030765533447265625p274 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100110001 #b1010101011110100000001100100010001110110100010111110)))
(assert (= y (fp #b0 #b10100010001 #b1101101000110100000011101101101100100000110000101001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
