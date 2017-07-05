(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.6670800703796098130027303341194055974483489990234375p960 {- 3004261556387895 960 (-1.62462e+289)}
; -1.6670800703796098130027303341194055974483489990234375p960 | == 1.6670800703796098130027303341194055974483489990234375p960
; [HW: 1.6670800703796098130027303341194055974483489990234375p960] 

; mpf : + 3004261556387895 960
; mpfd: + 3004261556387895 960 (1.62462e+289) class: Pos. norm. non-zero
; hwf : + 3004261556387895 960 (1.62462e+289) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110111111 #b1010101011000101110000100110111000011000000000110111)))
(assert (= r (fp #b0 #b11110111111 #b1010101011000101110000100110111000011000000000110111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
