(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.782744966149886867157192682498134672641754150390625 404 {+ 3525169937878762 404 (7.36559e+121)}
; 1.782744966149886867157192682498134672641754150390625 404 I == 1.782744966149886867157192682498134672641754150390625 404
; [HW: 1.782744966149886867157192682498134672641754150390625 404] 

; mpf : + 3525169937878762 404
; mpfd: + 3525169937878762 404 (7.36559e+121) class: Pos. norm. non-zero
; hwf : + 3525169937878762 404 (7.36559e+121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010011 #b1100100001100001111110010101111010111000111011101010)))
(assert (= r (fp #b0 #b10110010011 #b1100100001100001111110010101111010111000111011101010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
