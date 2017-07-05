(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2528759262257114226457588301855139434337615966796875p589 {+ 1138851927121083 589 (2.53849e+177)}
; 1.2528759262257114226457588301855139434337615966796875p589 | == 1.2528759262257114226457588301855139434337615966796875p589
; [HW: 1.2528759262257114226457588301855139434337615966796875p589] 

; mpf : + 1138851927121083 589
; mpfd: + 1138851927121083 589 (2.53849e+177) class: Pos. norm. non-zero
; hwf : + 1138851927121083 589 (2.53849e+177) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001100 #b0100000010111100011110100000100100010101110010111011)))
(assert (= r (fp #b0 #b11001001100 #b0100000010111100011110100000100100010101110010111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
