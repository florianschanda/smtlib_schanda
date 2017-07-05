(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.630936872073153853790472567197866737842559814453125p-488 {+ 2841487061962962 -488 (2.04079e-147)}
; 1.630936872073153853790472567197866737842559814453125p-488 S == 1.2770813881946418977264556815498508512973785400390625p-244
; [HW: 1.2770813881946418977264556815498508512973785400390625p-244] 

; mpf : + 1247863636624689 -244
; mpfd: + 1247863636624689 -244 (4.51752e-074) class: Pos. norm. non-zero
; hwf : + 1247863636624689 -244 (4.51752e-074) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010111 #b1010000110000101000101000010111101100101000011010010)))
(assert (= r (fp #b0 #b01100001011 #b0100011011101110110011100100110010100000010100110001)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
