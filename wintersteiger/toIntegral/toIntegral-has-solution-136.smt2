(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.97668167503927083572534684208221733570098876953125 592 {- 4398583227766452 592 (-3.20401e+178)}
; -1.97668167503927083572534684208221733570098876953125 592 I == -1.97668167503927083572534684208221733570098876953125 592
; [HW: -1.97668167503927083572534684208221733570098876953125 592] 

; mpf : - 4398583227766452 592
; mpfd: - 4398583227766452 592 (-3.20401e+178) class: Neg. norm. non-zero
; hwf : - 4398583227766452 592 (-3.20401e+178) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001001111 #b1111101000000111110011110110110011100101011010110100)))
(assert (= r (fp #b1 #b11001001111 #b1111101000000111110011110110110011100101011010110100)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
