(set-info :smt-lib-version 2.6)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5666154272350019116544217467890121042728424072265625 305 {- 2551809026957929 305 (-1.0212e+092)}
; -1.5666154272350019116544217467890121042728424072265625 305 I == -1.5666154272350019116544217467890121042728424072265625 305
; [HW: -1.5666154272350019116544217467890121042728424072265625 305] 

; mpf : - 2551809026957929 305
; mpfd: - 2551809026957929 305 (-1.0212e+092) class: Neg. norm. non-zero
; hwf : - 2551809026957929 305 (-1.0212e+092) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100110000 #b1001000100001101101101010110100101100010001001101001)))
(assert (= r (fp #b1 #b10100110000 #b1001000100001101101101010110100101100010001001101001)))
(assert (= (fp.roundToIntegral roundTowardNegative x) r))
(check-sat)
(exit)
