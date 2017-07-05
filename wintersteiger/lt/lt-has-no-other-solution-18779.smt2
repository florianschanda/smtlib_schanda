(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5551293305877857964247823474579490721225738525390625p794 {+ 2500080246377585 794 (1.62025e+239)}
; Y = 1.531514178386647273555354331620037555694580078125p-113 {+ 2393727055724240 -113 (1.47479e-034)}
; 1.5551293305877857964247823474579490721225738525390625p794 < 1.531514178386647273555354331620037555694580078125p-113 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100011001 #b1000111000011100111101001010111111101100110001110001)))
(assert (= y (fp #b0 #b01110001110 #b1000100000010001010100000010110110000111111011010000)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
