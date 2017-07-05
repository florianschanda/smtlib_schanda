(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.15307571110760154198260352131910622119903564453125p403 {- 689391715503668 403 (-2.38202e+121)}
; -1.15307571110760154198260352131910622119903564453125p403 | == 1.15307571110760154198260352131910622119903564453125p403
; [HW: 1.15307571110760154198260352131910622119903564453125p403] 

; mpf : + 689391715503668 403
; mpfd: + 689391715503668 403 (2.38202e+121) class: Pos. norm. non-zero
; hwf : + 689391715503668 403 (2.38202e+121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110010010 #b0010011100101111111110000100010100000100111000110100)))
(assert (= r (fp #b0 #b10110010010 #b0010011100101111111110000100010100000100111000110100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
