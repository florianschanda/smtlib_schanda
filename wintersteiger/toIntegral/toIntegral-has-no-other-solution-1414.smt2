(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7009664915941213880756777143687941133975982666015625 263 {- 3156872430342489 263 (-2.52107e+079)}
; -1.7009664915941213880756777143687941133975982666015625 263 I == -1.7009664915941213880756777143687941133975982666015625 263
; [HW: -1.7009664915941213880756777143687941133975982666015625 263] 

; mpf : - 3156872430342489 263
; mpfd: - 3156872430342489 263 (-2.52107e+079) class: Neg. norm. non-zero
; hwf : - 3156872430342489 263 (-2.52107e+079) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100000110 #b1011001101110010100010100011110011111101000101011001)))
(assert (= r (fp #b1 #b10100000110 #b1011001101110010100010100011110011111101000101011001)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
