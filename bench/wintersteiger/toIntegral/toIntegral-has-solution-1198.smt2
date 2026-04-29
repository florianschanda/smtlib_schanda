(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.322895885702609408696162063279189169406890869140625 369 {- 1454193790529738 369 (-1.59072e+111)}
; -1.322895885702609408696162063279189169406890869140625 369 I == -1.322895885702609408696162063279189169406890869140625 369
; [HW: -1.322895885702609408696162063279189169406890869140625 369] 

; mpf : - 1454193790529738 369
; mpfd: - 1454193790529738 369 (-1.59072e+111) class: Neg. norm. non-zero
; hwf : - 1454193790529738 369 (-1.59072e+111) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101110000 #b0101001010101001010011100000010100011011000011001010)))
(assert (= r (fp #b1 #b10101110000 #b0101001010101001010011100000010100011011000011001010)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
