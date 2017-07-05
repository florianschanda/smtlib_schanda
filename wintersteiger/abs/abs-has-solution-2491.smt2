(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2503920188363950583010364425717853009700775146484375p458 {- 1127665402728135 458 (-9.30645e+137)}
; -1.2503920188363950583010364425717853009700775146484375p458 | == 1.2503920188363950583010364425717853009700775146484375p458
; [HW: 1.2503920188363950583010364425717853009700775146484375p458] 

; mpf : + 1127665402728135 458
; mpfd: + 1127665402728135 458 (9.30645e+137) class: Pos. norm. non-zero
; hwf : + 1127665402728135 458 (9.30645e+137) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111001001 #b0100000000011001101100001111110000010100111011000111)))
(assert (= r (fp #b0 #b10111001001 #b0100000000011001101100001111110000010100111011000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
