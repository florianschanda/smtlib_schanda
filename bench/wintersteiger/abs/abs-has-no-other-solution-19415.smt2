(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.326919105913435981136672126012854278087615966796875p10 {- 1472312763572046 10 (-1358.77)}
; -1.326919105913435981136672126012854278087615966796875p10 | == 1.326919105913435981136672126012854278087615966796875p10
; [HW: 1.326919105913435981136672126012854278087615966796875p10] 

; mpf : + 1472312763572046 10
; mpfd: + 1472312763572046 10 (1358.77) class: Pos. norm. non-zero
; hwf : + 1472312763572046 10 (1358.77) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000001001 #b0101001110110000111110000111010001010101111101001110)))
(assert (= r (fp #b0 #b10000001001 #b0101001110110000111110000111010001010101111101001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
