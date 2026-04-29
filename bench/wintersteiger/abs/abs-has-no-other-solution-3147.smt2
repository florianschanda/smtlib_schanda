(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.61167603406351123140893832896836102008819580078125p-319 {- 2754743959079892 -319 (-1.50907e-096)}
; -1.61167603406351123140893832896836102008819580078125p-319 | == 1.61167603406351123140893832896836102008819580078125p-319
; [HW: 1.61167603406351123140893832896836102008819580078125p-319] 

; mpf : + 2754743959079892 -319
; mpfd: + 2754743959079892 -319 (1.50907e-096) class: Pos. norm. non-zero
; hwf : + 2754743959079892 -319 (1.50907e-096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011000000 #b1001110010010110110011001111001000001100101111010100)))
(assert (= r (fp #b0 #b01011000000 #b1001110010010110110011001111001000001100101111010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
