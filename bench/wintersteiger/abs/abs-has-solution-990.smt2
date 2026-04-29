(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4324484934369683397648032041615806519985198974609375p432 {+ 1947574873899663 432 (1.58868e+130)}
; 1.4324484934369683397648032041615806519985198974609375p432 | == 1.4324484934369683397648032041615806519985198974609375p432
; [HW: 1.4324484934369683397648032041615806519985198974609375p432] 

; mpf : + 1947574873899663 432
; mpfd: + 1947574873899663 432 (1.58868e+130) class: Pos. norm. non-zero
; hwf : + 1947574873899663 432 (1.58868e+130) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110101111 #b0110111010110100111100011100100010000100001010001111)))
(assert (= r (fp #b0 #b10110101111 #b0110111010110100111100011100100010000100001010001111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
