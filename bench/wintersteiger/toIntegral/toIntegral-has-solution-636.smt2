(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2668336892455906994570113965892232954502105712890625 740 {+ 1201712103456337 740 (7.32683e+222)}
; 1.2668336892455906994570113965892232954502105712890625 740 I == 1.2668336892455906994570113965892232954502105712890625 740
; [HW: 1.2668336892455906994570113965892232954502105712890625 740] 

; mpf : + 1201712103456337 740
; mpfd: + 1201712103456337 740 (7.32683e+222) class: Pos. norm. non-zero
; hwf : + 1201712103456337 740 (7.32683e+222) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011100011 #b0100010001001111001101100111000011000111111001010001)))
(assert (= r (fp #b0 #b11011100011 #b0100010001001111001101100111000011000111111001010001)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
