(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2514430578182593745140138707938604056835174560546875p-845 {+ 1132398861495211 -845 (5.33414e-255)}
; 1.2514430578182593745140138707938604056835174560546875p-845 | == 1.2514430578182593745140138707938604056835174560546875p-845
; [HW: 1.2514430578182593745140138707938604056835174560546875p-845] 

; mpf : + 1132398861495211 -845
; mpfd: + 1132398861495211 -845 (5.33414e-255) class: Pos. norm. non-zero
; hwf : + 1132398861495211 -845 (5.33414e-255) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110010 #b0100000001011110100100100111111000100010101110101011)))
(assert (= r (fp #b0 #b00010110010 #b0100000001011110100100100111111000100010101110101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
