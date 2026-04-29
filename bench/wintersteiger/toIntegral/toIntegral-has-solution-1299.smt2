(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.859532615429782875793307539424858987331390380859375 358 {+ 3870990766562358 358 (1.0918e+108)}
; 1.859532615429782875793307539424858987331390380859375 358 I == 1.859532615429782875793307539424858987331390380859375 358
; [HW: 1.859532615429782875793307539424858987331390380859375 358] 

; mpf : + 3870990766562358 358
; mpfd: + 3870990766562358 358 (1.0918e+108) class: Pos. norm. non-zero
; hwf : + 3870990766562358 358 (1.0918e+108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100101 #b1101110000001010010101000101100100011101110000110110)))
(assert (= r (fp #b0 #b10101100101 #b1101110000001010010101000101100100011101110000110110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
