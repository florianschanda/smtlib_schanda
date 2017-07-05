(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2114158196217685858897539219469763338565826416015625p713 {- 952132206468825 713 (-5.22012e+214)}
; Y = 1.771405212578061938444307088502682745456695556640625p-228 {+ 3474100227918218 -228 (4.10657e-069)}
; -1.2114158196217685858897539219469763338565826416015625p713 > 1.771405212578061938444307088502682745456695556640625p-228 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011001000 #b0011011000011111010110001101111100100001111011011001)))
(assert (= y (fp #b0 #b01100011011 #b1100010101111010110011111101111111111100100110001010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
