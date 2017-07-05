(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2618800431003212025871107471175491809844970703125p-541 {- 1179402864522376 -541 (-1.75303e-163)}
; -1.2618800431003212025871107471175491809844970703125p-541 | == 1.2618800431003212025871107471175491809844970703125p-541
; [HW: 1.2618800431003212025871107471175491809844970703125p-541] 

; mpf : + 1179402864522376 -541
; mpfd: + 1179402864522376 -541 (1.75303e-163) class: Pos. norm. non-zero
; hwf : + 1179402864522376 -541 (1.75303e-163) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111100010 #b0100001100001010100100100000110010010111010010001000)))
(assert (= r (fp #b0 #b00111100010 #b0100001100001010100100100000110010010111010010001000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
