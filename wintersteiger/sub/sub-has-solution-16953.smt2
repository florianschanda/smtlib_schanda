(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.008102209880227473348668354446999728679656982421875p0 {- 36489109397470 0 (-1.0081)}
; Y = 1.674208059393617720189695319277234375476837158203125p637 {+ 3036363165055282 637 (9.54809e+191)}
; -1.008102209880227473348668354446999728679656982421875p0 - 1.674208059393617720189695319277234375476837158203125p637 == -1.674208059393617720189695319277234375476837158203125p637
; [HW: -1.674208059393617720189695319277234375476837158203125p637] 

; mpf : - 3036363165055282 637
; mpfd: - 3036363165055282 637 (-9.54809e+191) class: Neg. norm. non-zero
; hwf : - 3036363165055282 637 (-9.54809e+191) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111111111 #b0000001000010010111111001000011001110101111111011110)))
(assert (= y (fp #b0 #b11001111100 #b1010110010011000111001100011110111001011100100110010)))
(assert (= r (fp #b1 #b11001111100 #b1010110010011000111001100011110111001011100100110010)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
