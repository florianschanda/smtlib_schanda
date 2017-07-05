(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.399158676395045208806777736754156649112701416015625 696 {- 1797650866274426 696 (-4.59985e+209)}
; -1.399158676395045208806777736754156649112701416015625 696 I == -1.399158676395045208806777736754156649112701416015625 696
; [HW: -1.399158676395045208806777736754156649112701416015625 696] 

; mpf : - 1797650866274426 696
; mpfd: - 1797650866274426 696 (-4.59985e+209) class: Neg. norm. non-zero
; hwf : - 1797650866274426 696 (-4.59985e+209) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11010110111 #b0110011000101111010000110101010100001000000001111010)))
(assert (= r (fp #b1 #b11010110111 #b0110011000101111010000110101010100001000000001111010)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
