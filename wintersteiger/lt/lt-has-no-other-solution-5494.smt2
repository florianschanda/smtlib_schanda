(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.808429447657158295470480879885144531726837158203125p-665 {- 3640842559224114 -665 (-1.18128e-200)}
; Y = -1.8652041085197839098697158988215960562229156494140625p-318 {- 3896532900729121 -318 (-3.49291e-096)}
; -1.808429447657158295470480879885144531726837158203125p-665 < -1.8652041085197839098697158988215960562229156494140625p-318 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101100110 #b1100111011110101001110110111011011001111100100110010)))
(assert (= y (fp #b1 #b01011000001 #b1101110101111110000001000011011001110101000100100001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
