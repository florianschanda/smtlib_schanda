(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.95049101511019618016007370897568762302398681640625p177 {- 4280630981469284 177 (-3.7364e+053)}
; Y = 1.9588007358553334302797566124354489147663116455078125p-779 {+ 4318054636720637 -779 (6.16061e-235)}
; -1.95049101511019618016007370897568762302398681640625p177 = 1.9588007358553334302797566124354489147663116455078125p-779 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10010110000 #b1111001101010011011000010001000100001010010001100100)))
(assert (= y (fp #b0 #b00011110100 #b1111010101110011111101110000101111100001000111111101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
