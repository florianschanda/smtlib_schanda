(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7198897300354729633653505516122095286846160888671875 613 {+ 3242095119935603 613 (5.84639e+184)}
; 1.7198897300354729633653505516122095286846160888671875 613 I == 1.7198897300354729633653505516122095286846160888671875 613
; [HW: 1.7198897300354729633653505516122095286846160888671875 613] 

; mpf : + 3242095119935603 613
; mpfd: + 3242095119935603 613 (5.84639e+184) class: Pos. norm. non-zero
; hwf : + 3242095119935603 613 (5.84639e+184) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001100100 #b1011100001001010101100010111111100111010100001110011)))
(assert (= r (fp #b0 #b11001100100 #b1011100001001010101100010111111100111010100001110011)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
