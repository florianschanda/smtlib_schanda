(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5096983087332811468428417356335557997226715087890625 177 {+ 2295477113282577 177 (2.89201e+053)}
; 1.5096983087332811468428417356335557997226715087890625 177 I == 1.5096983087332811468428417356335557997226715087890625 177
; [HW: 1.5096983087332811468428417356335557997226715087890625 177] 

; mpf : + 2295477113282577 177
; mpfd: + 2295477113282577 177 (2.89201e+053) class: Pos. norm. non-zero
; hwf : + 2295477113282577 177 (2.89201e+053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110000 #b1000001001111011100101101001111011010110000000010001)))
(assert (= r (fp #b0 #b10010110000 #b1000001001111011100101101001111011010110000000010001)))
(assert  (not (= (fp.roundToIntegral roundTowardNegative x) r)))
(check-sat)
(exit)
