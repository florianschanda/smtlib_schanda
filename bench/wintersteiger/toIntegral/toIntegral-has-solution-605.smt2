(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1269295431599493095831121536321006715297698974609375 445 {- 571639843277455 445 (-1.02387e+134)}
; -1.1269295431599493095831121536321006715297698974609375 445 I == -1.1269295431599493095831121536321006715297698974609375 445
; [HW: -1.1269295431599493095831121536321006715297698974609375 445] 

; mpf : - 571639843277455 445
; mpfd: - 571639843277455 445 (-1.02387e+134) class: Neg. norm. non-zero
; hwf : - 571639843277455 445 (-1.02387e+134) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110111100 #b0010000001111110011101000101110011000100101010001111)))
(assert (= r (fp #b1 #b10110111100 #b0010000001111110011101000101110011000100101010001111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
