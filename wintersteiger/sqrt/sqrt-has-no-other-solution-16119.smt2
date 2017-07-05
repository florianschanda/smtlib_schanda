(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.43821392235788980684674243093468248844146728515625p-445 {+ 1973540057439556 -445 (1.58298e-134)}
; 1.43821392235788980684674243093468248844146728515625p-445 S == 1.6960034919527082752921387509559281170368194580078125p-223
; [HW: 1.6960034919527082752921387509559281170368194580078125p-223] 

; mpf : + 3134521067006781 -223
; mpfd: + 3134521067006781 -223 (1.25817e-067) class: Pos. norm. non-zero
; hwf : + 3134521067006781 -223 (1.25817e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001000010 #b0111000000101110110010011010000100101101110101000100)))
(assert (= r (fp #b0 #b01100100000 #b1011001000101101010010001110101111010110101100111101)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
