(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2871384257976334897222159270313568413257598876953125p-69 {+ 1293156507425973 -69 (2.1805e-021)}
; Y = -1.0886980350681512152988261732389219105243682861328125p-376 {- 399460437681421 -376 (-7.07341e-114)}
; 1.2871384257976334897222159270313568413257598876953125p-69 = -1.0886980350681512152988261732389219105243682861328125p-376 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110111010 #b0100100110000001111001110110010000111001110010110101)))
(assert (= y (fp #b1 #b01010000111 #b0001011010110100111010100001011111010110010100001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
