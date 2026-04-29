(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.8011754817109857373935710711521096527576446533203125p99 {- 3608173600891973 99 (-1.14163e+030)}
; Y = 1.1484268322733652833989026476047001779079437255859375p685 {+ 668455026518111 685 (1.84353e+206)}
; -1.8011754817109857373935710711521096527576446533203125p99 = 1.1484268322733652833989026476047001779079437255859375p685 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001100010 #b1100110100011001110101100001110001001110010001000101)))
(assert (= y (fp #b0 #b11010101100 #b0010010111111111010011010000011001110110100001011111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
