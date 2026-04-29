(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.783349895153374387035682957503013312816619873046875p-320 {+ 3527894295913454 -320 (8.34907e-097)}
; 1.783349895153374387035682957503013312816619873046875p-320 | == 1.783349895153374387035682957503013312816619873046875p-320
; [HW: 1.783349895153374387035682957503013312816619873046875p-320] 

; mpf : + 3527894295913454 -320
; mpfd: + 3527894295913454 -320 (8.34907e-097) class: Pos. norm. non-zero
; hwf : + 3527894295913454 -320 (8.34907e-097) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111111 #b1100100010001001100111100110010100000010001111101110)))
(assert (= r (fp #b0 #b01010111111 #b1100100010001001100111100110010100000010001111101110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
