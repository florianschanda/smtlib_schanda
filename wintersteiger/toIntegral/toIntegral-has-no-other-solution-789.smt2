(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7692490567719099114896152968867681920528411865234375 372 {- 3464389765433079 372 (-1.70195e+112)}
; -1.7692490567719099114896152968867681920528411865234375 372 I == -1.7692490567719099114896152968867681920528411865234375 372
; [HW: -1.7692490567719099114896152968867681920528411865234375 372] 

; mpf : - 3464389765433079 372
; mpfd: - 3464389765433079 372 (-1.70195e+112) class: Neg. norm. non-zero
; hwf : - 3464389765433079 372 (-1.70195e+112) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110011 #b1100010011101101100000011001010101010000011011110111)))
(assert (= r (fp #b1 #b10101110011 #b1100010011101101100000011001010101010000011011110111)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
