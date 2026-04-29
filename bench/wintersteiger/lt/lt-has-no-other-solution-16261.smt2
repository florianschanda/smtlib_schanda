(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.025140287835204500055397147662006318569183349609375p-543 {+ 113221790926614 -543 (3.56037e-164)}
; Y = 1.7756280094418619430740591269568540155887603759765625p-814 {+ 3493118014300489 -814 (1.62531e-245)}
; 1.025140287835204500055397147662006318569183349609375p-543 < 1.7756280094418619430740591269568540155887603759765625p-814 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111100000 #b0000011001101111100110000000101000010000011100010110)))
(assert (= y (fp #b0 #b00011010001 #b1100011010001111100011101010011001101010000101001001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
