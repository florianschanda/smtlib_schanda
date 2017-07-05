(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4031889235371670654473064132616855204105377197265625p-787 {- 1815801485801897 -787 (-1.72389e-237)}
; Y = -zero {- 0 -1023 (-0)}
; -1.4031889235371670654473064132616855204105377197265625p-787 - -zero == -1.4031889235371670654473064132616855204105377197265625p-787
; [HW: -1.4031889235371670654473064132616855204105377197265625p-787] 

; mpf : - 1815801485801897 -787
; mpfd: - 1815801485801897 -787 (-1.72389e-237) class: Neg. norm. non-zero
; hwf : - 1815801485801897 -787 (-1.72389e-237) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011101100 #b0110011100110111011000111010100010110011100110101001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b00011101100 #b0110011100110111011000111010100010110011100110101001)))
(assert  (not (= (fp.sub roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
