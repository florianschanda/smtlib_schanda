(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.173346968256688160892053929273970425128936767578125p-429 {+ 780685341646626 -429 (8.46366e-130)}
; 1.173346968256688160892053929273970425128936767578125p-429 | == 1.173346968256688160892053929273970425128936767578125p-429
; [HW: 1.173346968256688160892053929273970425128936767578125p-429] 

; mpf : + 780685341646626 -429
; mpfd: + 780685341646626 -429 (8.46366e-130) class: Pos. norm. non-zero
; hwf : + 780685341646626 -429 (8.46366e-130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001010010 #b0010110001100000011101111000011110000101111100100010)))
(assert (= r (fp #b0 #b01001010010 #b0010110001100000011101111000011110000101111100100010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
