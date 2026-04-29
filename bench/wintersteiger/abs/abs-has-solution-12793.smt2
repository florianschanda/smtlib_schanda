(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.7619085922458046500338468831614591181278228759765625p199 {- 3431331252128585 199 (-1.41564e+060)}
; -1.7619085922458046500338468831614591181278228759765625p199 | == 1.7619085922458046500338468831614591181278228759765625p199
; [HW: 1.7619085922458046500338468831614591181278228759765625p199] 

; mpf : + 3431331252128585 199
; mpfd: + 3431331252128585 199 (1.41564e+060) class: Pos. norm. non-zero
; hwf : + 3431331252128585 199 (1.41564e+060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011000110 #b1100001100001100011100010000011000111100101101001001)))
(assert (= r (fp #b0 #b10011000110 #b1100001100001100011100010000011000111100101101001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
