(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5734731917670072842696527004591189324855804443359375p507 {- 2582693652748863 507 (-6.59276e+152)}
; -1.5734731917670072842696527004591189324855804443359375p507 | == 1.5734731917670072842696527004591189324855804443359375p507
; [HW: 1.5734731917670072842696527004591189324855804443359375p507] 

; mpf : + 2582693652748863 507
; mpfd: + 2582693652748863 507 (6.59276e+152) class: Pos. norm. non-zero
; hwf : + 2582693652748863 507 (6.59276e+152) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111010 #b1001001011001111001000111001101111000101101000111111)))
(assert (= r (fp #b0 #b10111111010 #b1001001011001111001000111001101111000101101000111111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
