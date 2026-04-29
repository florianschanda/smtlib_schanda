(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.388622422345643148133831346058286726474761962890625p-839 {+ 1750199796463658 -839 (3.78807e-253)}
; 1.388622422345643148133831346058286726474761962890625p-839 | == 1.388622422345643148133831346058286726474761962890625p-839
; [HW: 1.388622422345643148133831346058286726474761962890625p-839] 

; mpf : + 1750199796463658 -839
; mpfd: + 1750199796463658 -839 (3.78807e-253) class: Pos. norm. non-zero
; hwf : + 1750199796463658 -839 (3.78807e-253) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111000 #b0110001101111100110000100101001001110111100000101010)))
(assert (= r (fp #b0 #b00010111000 #b0110001101111100110000100101001001110111100000101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
