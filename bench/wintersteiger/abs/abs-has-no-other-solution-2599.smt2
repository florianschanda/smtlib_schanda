(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3741469198459370648635058387299068272113800048828125p-302 {+ 1685007928799981 -302 (1.68645e-091)}
; 1.3741469198459370648635058387299068272113800048828125p-302 | == 1.3741469198459370648635058387299068272113800048828125p-302
; [HW: 1.3741469198459370648635058387299068272113800048828125p-302] 

; mpf : + 1685007928799981 -302
; mpfd: + 1685007928799981 -302 (1.68645e-091) class: Pos. norm. non-zero
; hwf : + 1685007928799981 -302 (1.68645e-091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011010001 #b0101111111001000000101111011000010100011001011101101)))
(assert (= r (fp #b0 #b01011010001 #b0101111111001000000101111011000010100011001011101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
