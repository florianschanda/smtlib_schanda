(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4494052500155911733514813022338785231113433837890625p574 {+ 2023941316508561 574 (8.96205e+172)}
; Y = -1.935918145379603938494028625427745282649993896484375p256 {- 4215000610780870 256 (-2.24164e+077)}
; 1.4494052500155911733514813022338785231113433837890625p574 < -1.935918145379603938494028625427745282649993896484375p256 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000111101 #b0111001100001100001110001111001101110111101110010001)))
(assert (= y (fp #b1 #b10011111111 #b1110111110011000010101001110001000100011011011000110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
