(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.7479321263173714928740309915156103670597076416015625p248 {- 3368386845381337 248 (-7.90612e+074)}
; Y = 1.2397183187108027357936634871293790638446807861328125p-660 {+ 1079595330819853 -660 (2.59135e-199)}
; -1.7479321263173714928740309915156103670597076416015625p248 > 1.2397183187108027357936634871293790638446807861328125p-660 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011110111 #b1011111101111000011110101101011000101001001011011001)))
(assert (= y (fp #b0 #b00101101011 #b0011110101011110001011100000001100011101011100001101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
