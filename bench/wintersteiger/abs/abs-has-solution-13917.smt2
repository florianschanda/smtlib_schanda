(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1773802507334603095756619950407184660434722900390625p90 {- 798849631106097 90 (-1.45753e+027)}
; -1.1773802507334603095756619950407184660434722900390625p90 | == 1.1773802507334603095756619950407184660434722900390625p90
; [HW: 1.1773802507334603095756619950407184660434722900390625p90] 

; mpf : + 798849631106097 90
; mpfd: + 798849631106097 90 (1.45753e+027) class: Pos. norm. non-zero
; hwf : + 798849631106097 90 (1.45753e+027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001011001 #b0010110101101000110010101100011111011011010000110001)))
(assert (= r (fp #b0 #b10001011001 #b0010110101101000110010101100011111011011010000110001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
