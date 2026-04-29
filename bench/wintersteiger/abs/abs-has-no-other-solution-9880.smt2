(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6018943384408534935658963149762712419033050537109375p-959 {- 2710691118318639 -959 (-3.28752e-289)}
; -1.6018943384408534935658963149762712419033050537109375p-959 | == 1.6018943384408534935658963149762712419033050537109375p-959
; [HW: 1.6018943384408534935658963149762712419033050537109375p-959] 

; mpf : + 2710691118318639 -959
; mpfd: + 2710691118318639 -959 (3.28752e-289) class: Pos. norm. non-zero
; hwf : + 2710691118318639 -959 (3.28752e-289) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001000000 #b1001101000010101101111110101001101000000010000101111)))
(assert (= r (fp #b0 #b00001000000 #b1001101000010101101111110101001101000000010000101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
