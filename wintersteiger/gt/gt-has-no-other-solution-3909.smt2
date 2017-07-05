(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4540890521448479599797565242624841630458831787109375p-933 {- 2045035286032559 -933 (-2.00265e-281)}
; Y = 1.9030216070053544985540838752058334648609161376953125p777 {+ 4066847772816821 777 (1.51269e+234)}
; -1.4540890521448479599797565242624841630458831787109375p-933 > 1.9030216070053544985540838752058334648609161376953125p777 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001011010 #b0111010000111111001011100001110001101111000010101111)))
(assert (= y (fp #b0 #b11100001000 #b1110011100101100011011001000110110101011010110110101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
