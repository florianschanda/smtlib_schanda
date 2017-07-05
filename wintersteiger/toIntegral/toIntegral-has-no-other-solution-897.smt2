(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.63802861561835921833107931888662278652191162109375 914 {- 2873425435550556 914 (-2.26849e+275)}
; -1.63802861561835921833107931888662278652191162109375 914 I == -1.63802861561835921833107931888662278652191162109375 914
; [HW: -1.63802861561835921833107931888662278652191162109375 914] 

; mpf : - 2873425435550556 914
; mpfd: - 2873425435550556 914 (-2.26849e+275) class: Neg. norm. non-zero
; hwf : - 2873425435550556 914 (-2.26849e+275) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110010001 #b1010001101010101110101111110010111111110001101011100)))
(assert (= r (fp #b1 #b11110010001 #b1010001101010101110101111110010111111110001101011100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
