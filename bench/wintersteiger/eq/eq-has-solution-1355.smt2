(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1972111975184838161823108748649246990680694580078125p756 {+ 888160275657533 756 (4.53782e+227)}
; Y = 1.791115761572864339967736668768338859081268310546875p645 {+ 3562868649026478 645 (2.61499e+194)}
; 1.1972111975184838161823108748649246990680694580078125p756 = 1.791115761572864339967736668768338859081268310546875p645 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011110011 #b0011001001111100011011101101101110111111001100111101)))
(assert (= y (fp #b0 #b11010000100 #b1100101010000110100100000000001101001110001110101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
