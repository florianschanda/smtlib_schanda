(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.95733640475971260030974008259363472461700439453125p635 {+ 4311459875744052 635 (2.7907e+191)}
; 1.95733640475971260030974008259363472461700439453125p635 | == 1.95733640475971260030974008259363472461700439453125p635
; [HW: 1.95733640475971260030974008259363472461700439453125p635] 

; mpf : + 4311459875744052 635
; mpfd: + 4311459875744052 635 (2.7907e+191) class: Pos. norm. non-zero
; hwf : + 4311459875744052 635 (2.7907e+191) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111010 #b1111010100010011111111111010010110110110100100110100)))
(assert (= r (fp #b0 #b11001111010 #b1111010100010011111111111010010110110110100100110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
