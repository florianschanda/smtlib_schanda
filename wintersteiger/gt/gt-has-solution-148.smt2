(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8545997189637735136358287491020746529102325439453125p717 {- 3848774975876181 717 (-1.27867e+216)}
; Y = 1.273527749937762632015392227913253009319305419921875p831 {+ 1231859472695198 831 (1.82362e+250)}
; -1.8545997189637735136358287491020746529102325439453125p717 > 1.273527749937762632015392227913253009319305419921875p831 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001100 #b1101101011000111000011000001010000011110110001010101)))
(assert (= y (fp #b0 #b11100111110 #b0100011000000101111010100010010010000111111110011110)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
