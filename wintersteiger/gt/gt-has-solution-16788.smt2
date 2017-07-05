(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7065020747400063694243499412550590932369232177734375p861 {- 3181802480535575 861 (-2.62381e+259)}
; Y = -1.028867955615913931666227654204703867435455322265625p-91 {- 130009714154778 -91 (-4.15556e-028)}
; -1.7065020747400063694243499412550590932369232177734375p861 > -1.028867955615913931666227654204703867435455322265625p-91 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101011100 #b1011010011011101010100011110100110010000100000010111)))
(assert (= y (fp #b1 #b01110100100 #b0000011101100011111000111110110101000101110100011010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
