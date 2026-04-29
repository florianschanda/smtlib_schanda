(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.3110567319931067942206937004812061786651611328125 308 {- 1400874982295240 308 (-6.83691e+092)}
; -1.3110567319931067942206937004812061786651611328125 308 I == -1.3110567319931067942206937004812061786651611328125 308
; [HW: -1.3110567319931067942206937004812061786651611328125 308] 

; mpf : - 1400874982295240 308
; mpfd: - 1400874982295240 308 (-6.83691e+092) class: Neg. norm. non-zero
; hwf : - 1400874982295240 308 (-6.83691e+092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110011 #b0100111110100001011010011111101100011100011011001000)))
(assert (= r (fp #b1 #b10100110011 #b0100111110100001011010011111101100011100011011001000)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
