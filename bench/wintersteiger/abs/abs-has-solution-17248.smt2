(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.37149844178946889172721057548187673091888427734375p-884 {- 1673080244011772 -884 (-1.06336e-266)}
; -1.37149844178946889172721057548187673091888427734375p-884 | == 1.37149844178946889172721057548187673091888427734375p-884
; [HW: 1.37149844178946889172721057548187673091888427734375p-884] 

; mpf : + 1673080244011772 -884
; mpfd: + 1673080244011772 -884 (1.06336e-266) class: Pos. norm. non-zero
; hwf : + 1673080244011772 -884 (1.06336e-266) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010001011 #b0101111100011010100001011001101000000000001011111100)))
(assert (= r (fp #b0 #b00010001011 #b0101111100011010100001011001101000000000001011111100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
