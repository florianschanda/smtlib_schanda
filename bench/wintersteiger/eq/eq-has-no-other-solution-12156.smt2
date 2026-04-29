(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9171620890989291563499818948912434279918670654296875p561 {- 4130530842704283 561 (-1.44706e+169)}
; Y = -1.2605034348409318578632110074977390468120574951171875p-486 {- 1173203172078355 -486 (-6.30908e-147)}
; -1.9171620890989291563499818948912434279918670654296875p561 = -1.2605034348409318578632110074977390468120574951171875p-486 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000110000 #b1110101011001011001000100111100111001111100110011011)))
(assert (= y (fp #b1 #b01000011001 #b0100001010110000010110100110010100100011001100010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
