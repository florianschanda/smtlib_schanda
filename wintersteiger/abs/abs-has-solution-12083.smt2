(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.323325902278694510272316620103083550930023193359375p-957 {- 1456130413021558 -957 (-1.08633e-288)}
; -1.323325902278694510272316620103083550930023193359375p-957 | == 1.323325902278694510272316620103083550930023193359375p-957
; [HW: 1.323325902278694510272316620103083550930023193359375p-957] 

; mpf : + 1456130413021558 -957
; mpfd: + 1456130413021558 -957 (1.08633e-288) class: Pos. norm. non-zero
; hwf : + 1456130413021558 -957 (1.08633e-288) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001000010 #b0101001011000101011111001000000000111100100101110110)))
(assert (= r (fp #b0 #b00001000010 #b0101001011000101011111001000000000111100100101110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
