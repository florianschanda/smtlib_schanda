(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.223317666657393498752526284079067409038543701171875p939 {+ 1005733360343486 939 (5.68467e+282)}
; 1.223317666657393498752526284079067409038543701171875p939 | == 1.223317666657393498752526284079067409038543701171875p939
; [HW: 1.223317666657393498752526284079067409038543701171875p939] 

; mpf : + 1005733360343486 939
; mpfd: + 1005733360343486 939 (5.68467e+282) class: Pos. norm. non-zero
; hwf : + 1005733360343486 939 (5.68467e+282) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110101010 #b0011100100101011010110001011101011101001100110111110)))
(assert (= r (fp #b0 #b11110101010 #b0011100100101011010110001011101011101001100110111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
