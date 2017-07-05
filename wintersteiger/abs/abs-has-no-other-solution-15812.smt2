(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.434316555213241972666082801879383623600006103515625p-603 {- 1955987876219194 -603 (-4.32073e-182)}
; -1.434316555213241972666082801879383623600006103515625p-603 | == 1.434316555213241972666082801879383623600006103515625p-603
; [HW: 1.434316555213241972666082801879383623600006103515625p-603] 

; mpf : + 1955987876219194 -603
; mpfd: + 1955987876219194 -603 (4.32073e-182) class: Pos. norm. non-zero
; hwf : + 1955987876219194 -603 (4.32073e-182) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100100 #b0110111100101111010111101010100011000000100100111010)))
(assert (= r (fp #b0 #b00110100100 #b0110111100101111010111101010100011000000100100111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
