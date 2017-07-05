(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9283024257422594072153287925175391137599945068359375 770 {+ 4180702458659967 770 (1.19749e+232)}
; 1.9283024257422594072153287925175391137599945068359375 770 I == 1.9283024257422594072153287925175391137599945068359375 770
; [HW: 1.9283024257422594072153287925175391137599945068359375 770] 

; mpf : + 4180702458659967 770
; mpfd: + 4180702458659967 770 (1.19749e+232) class: Pos. norm. non-zero
; hwf : + 4180702458659967 770 (1.19749e+232) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000001 #b1110110110100101001110100100111101011100010001111111)))
(assert (= r (fp #b0 #b11100000001 #b1110110110100101001110100100111101011100010001111111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
