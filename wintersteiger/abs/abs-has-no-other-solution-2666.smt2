(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5092873724070978713740487364702858030796051025390625p551 {+ 2293626420597105 551 (1.1125e+166)}
; 1.5092873724070978713740487364702858030796051025390625p551 | == 1.5092873724070978713740487364702858030796051025390625p551
; [HW: 1.5092873724070978713740487364702858030796051025390625p551] 

; mpf : + 2293626420597105 551
; mpfd: + 2293626420597105 551 (1.1125e+166) class: Pos. norm. non-zero
; hwf : + 2293626420597105 551 (1.1125e+166) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000100110 #b1000001001100000101010000100000011000001000101110001)))
(assert (= r (fp #b0 #b11000100110 #b1000001001100000101010000100000011000001000101110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
