(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.881288614792351321369778816006146371364593505859375p928 {+ 3968971077184694 928 (4.26866e+279)}
; 1.881288614792351321369778816006146371364593505859375p928 | == 1.881288614792351321369778816006146371364593505859375p928
; [HW: 1.881288614792351321369778816006146371364593505859375p928] 

; mpf : + 3968971077184694 928
; mpfd: + 3968971077184694 928 (4.26866e+279) class: Pos. norm. non-zero
; hwf : + 3968971077184694 928 (4.26866e+279) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110011111 #b1110000110011100001000010111001011011110110010110110)))
(assert (= r (fp #b0 #b11110011111 #b1110000110011100001000010111001011011110110010110110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
