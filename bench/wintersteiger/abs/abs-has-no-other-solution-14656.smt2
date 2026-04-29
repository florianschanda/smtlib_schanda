(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3159024923488094049872643154230900108814239501953125p381 {+ 1422698346827509 381 (6.48115e+114)}
; 1.3159024923488094049872643154230900108814239501953125p381 | == 1.3159024923488094049872643154230900108814239501953125p381
; [HW: 1.3159024923488094049872643154230900108814239501953125p381] 

; mpf : + 1422698346827509 381
; mpfd: + 1422698346827509 381 (6.48115e+114) class: Pos. norm. non-zero
; hwf : + 1422698346827509 381 (6.48115e+114) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111100 #b0101000011011110111111000101100101011100111011110101)))
(assert (= r (fp #b0 #b10101111100 #b0101000011011110111111000101100101011100111011110101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
