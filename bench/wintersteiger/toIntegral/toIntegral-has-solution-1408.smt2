(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.09752240374861198546341256587766110897064208984375 392 {- 439201861182524 392 (-1.10706e+118)}
; -1.09752240374861198546341256587766110897064208984375 392 I == -1.09752240374861198546341256587766110897064208984375 392
; [HW: -1.09752240374861198546341256587766110897064208984375 392] 

; mpf : - 439201861182524 392
; mpfd: - 439201861182524 392 (-1.10706e+118) class: Neg. norm. non-zero
; hwf : - 439201861182524 392 (-1.10706e+118) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110000111 #b0001100011110111001110100110111010111010010000111100)))
(assert (= r (fp #b1 #b10110000111 #b0001100011110111001110100110111010111010010000111100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
