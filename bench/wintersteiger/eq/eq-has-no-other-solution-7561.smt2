(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8725283451880077034701344018685631453990936279296875p-912 {+ 3929518330258907 -912 (5.40844e-275)}
; Y = -1.8592673670831556531624073613784275949001312255859375p-855 {- 3869796194207327 -855 (-7.73919e-258)}
; 1.8725283451880077034701344018685631453990936279296875p-912 = -1.8592673670831556531624073613784275949001312255859375p-855 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001101111 #b1101111101011110000001001000001101101010010111011011)))
(assert (= y (fp #b1 #b00010101000 #b1101101111111000111100100011100000100100011001011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
