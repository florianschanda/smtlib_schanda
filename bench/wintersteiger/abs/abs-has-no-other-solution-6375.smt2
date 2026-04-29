(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.414853568477688394722235898370854556560516357421875p-982 {- 1868334376409438 -982 (-3.46143e-296)}
; -1.414853568477688394722235898370854556560516357421875p-982 | == 1.414853568477688394722235898370854556560516357421875p-982
; [HW: 1.414853568477688394722235898370854556560516357421875p-982] 

; mpf : + 1868334376409438 -982
; mpfd: + 1868334376409438 -982 (3.46143e-296) class: Pos. norm. non-zero
; hwf : + 1868334376409438 -982 (3.46143e-296) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00000101001 #b0110101000110011110101111110110100111101100101011110)))
(assert (= r (fp #b0 #b00000101001 #b0110101000110011110101111110110100111101100101011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
