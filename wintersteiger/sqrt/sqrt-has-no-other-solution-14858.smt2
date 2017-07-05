(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9263352621775020612204798453603871166706085205078125p48 {+ 4171843141562749 48 (5.42215e+014)}
; 1.9263352621775020612204798453603871166706085205078125p48 S == 1.3879248042230176718447864914196543395519256591796875p24
; [HW: 1.3879248042230176718447864914196543395519256591796875p24] 

; mpf : + 1747058003746555 24
; mpfd: + 1747058003746555 24 (2.32855e+007) class: Pos. norm. non-zero
; hwf : + 1747058003746555 24 (2.32855e+007) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000101111 #b1110110100100100010011101100100000101111000101111101)))
(assert (= r (fp #b0 #b10000010111 #b0110001101001111000010100011101101110001111011111011)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
