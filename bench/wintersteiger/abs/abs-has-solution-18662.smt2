(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3892968961996017274174164413125254213809967041015625p307 {- 1753237356661017 307 (-3.62246e+092)}
; -1.3892968961996017274174164413125254213809967041015625p307 | == 1.3892968961996017274174164413125254213809967041015625p307
; [HW: 1.3892968961996017274174164413125254213809967041015625p307] 

; mpf : + 1753237356661017 307
; mpfd: + 1753237356661017 307 (3.62246e+092) class: Pos. norm. non-zero
; hwf : + 1753237356661017 307 (3.62246e+092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110010 #b0110001110101000111101100001110110011100100100011001)))
(assert (= r (fp #b0 #b10100110010 #b0110001110101000111101100001110110011100100100011001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
