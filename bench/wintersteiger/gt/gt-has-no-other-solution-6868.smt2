(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4751005676103778885277506560669280588626861572265625p-995 {- 2139662739253609 -995 (-4.4053e-300)}
; Y = -1.948368896538155592423890993813984096050262451171875p522 {- 4271073809059006 522 (-2.67503e+157)}
; -1.4751005676103778885277506560669280588626861572265625p-995 > -1.948368896538155592423890993813984096050262451171875p522 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011100 #b0111100110100000001100001101100000110010100101101001)))
(assert (= y (fp #b1 #b11000001001 #b1111001011001000010011011101001100101100110010111110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
