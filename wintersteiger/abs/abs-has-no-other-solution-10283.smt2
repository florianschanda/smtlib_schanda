(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9917347686566981845857071675709448754787445068359375p-414 {+ 4466376334572671 -414 (4.70775e-125)}
; 1.9917347686566981845857071675709448754787445068359375p-414 | == 1.9917347686566981845857071675709448754787445068359375p-414
; [HW: 1.9917347686566981845857071675709448754787445068359375p-414] 

; mpf : + 4466376334572671 -414
; mpfd: + 4466376334572671 -414 (4.70775e-125) class: Pos. norm. non-zero
; hwf : + 4466376334572671 -414 (4.70775e-125) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001100001 #b1111110111100010010101000110110110101111110001111111)))
(assert (= r (fp #b0 #b01001100001 #b1111110111100010010101000110110110101111110001111111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
