(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6090975894390593392557775587192736566066741943359375p-753 {+ 2743131676830015 -753 (3.39622e-227)}
; 1.6090975894390593392557775587192736566066741943359375p-753 | == 1.6090975894390593392557775587192736566066741943359375p-753
; [HW: 1.6090975894390593392557775587192736566066741943359375p-753] 

; mpf : + 2743131676830015 -753
; mpfd: + 2743131676830015 -753 (3.39622e-227) class: Pos. norm. non-zero
; hwf : + 2743131676830015 -753 (3.39622e-227) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100001110 #b1001101111101101110100011101001010110110100100111111)))
(assert (= r (fp #b0 #b00100001110 #b1001101111101101110100011101001010110110100100111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
