(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.05347483195518076826147080282680690288543701171875p-518 {+ 240829233267052 -518 (1.22768e-156)}
; 1.05347483195518076826147080282680690288543701171875p-518 | == 1.05347483195518076826147080282680690288543701171875p-518
; [HW: 1.05347483195518076826147080282680690288543701171875p-518] 

; mpf : + 240829233267052 -518
; mpfd: + 240829233267052 -518 (1.22768e-156) class: Pos. norm. non-zero
; hwf : + 240829233267052 -518 (1.22768e-156) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111111001 #b0000110110110000100001101100111001101000000101101100)))
(assert (= r (fp #b0 #b00111111001 #b0000110110110000100001101100111001101000000101101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
