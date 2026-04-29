(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3285503854164304460283574371715076267719268798828125p864 {- 1479659393333869 864 (-1.63416e+260)}
; -1.3285503854164304460283574371715076267719268798828125p864 | == 1.3285503854164304460283574371715076267719268798828125p864
; [HW: 1.3285503854164304460283574371715076267719268798828125p864] 

; mpf : + 1479659393333869 864
; mpfd: + 1479659393333869 864 (1.63416e+260) class: Pos. norm. non-zero
; hwf : + 1479659393333869 864 (1.63416e+260) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101011111 #b0101010000011011111000001100100001110011101001101101)))
(assert (= r (fp #b0 #b11101011111 #b0101010000011011111000001100100001110011101001101101)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
