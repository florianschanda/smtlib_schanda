(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3744318877021017843986783191212452948093414306640625p173 {+ 1686291309930817 173 (1.64556e+052)}
; Y = -1.916849865055019197512820028350688517093658447265625p399 {- 4129124710616474 399 (-2.47489e+120)}
; 1.3744318877021017843986783191212452948093414306640625p173 > -1.916849865055019197512820028350688517093658447265625p399 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10010101100 #b0101111111011010110001001010100001000010100101000001)))
(assert (= y (fp #b1 #b10110001110 #b1110101010110110101011000011100111000000110110011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
