(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3941064114975143528596390751772560179233551025390625 776 {- 1774897487964529 776 (-5.5408e+233)}
; -1.3941064114975143528596390751772560179233551025390625 776 I == -1.3941064114975143528596390751772560179233551025390625 776
; [HW: -1.3941064114975143528596390751772560179233551025390625 776] 

; mpf : - 1774897487964529 776
; mpfd: - 1774897487964529 776 (-5.5408e+233) class: Neg. norm. non-zero
; hwf : - 1774897487964529 776 (-5.5408e+233) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000111 #b0110010011100100001010000110010010000110100101110001)))
(assert (= r (fp #b1 #b11100000111 #b0110010011100100001010000110010010000110100101110001)))
(assert  (not (= (fp.roundToIntegral roundTowardPositive x) r)))
(check-sat)
(exit)
