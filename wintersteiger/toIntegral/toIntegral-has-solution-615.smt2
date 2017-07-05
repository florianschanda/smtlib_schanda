(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.605809398344239635747499050921760499477386474609375 275 {- 2728322980640662 275 (-9.74861e+082)}
; -1.605809398344239635747499050921760499477386474609375 275 I == -1.605809398344239635747499050921760499477386474609375 275
; [HW: -1.605809398344239635747499050921760499477386474609375 275] 

; mpf : - 2728322980640662 275
; mpfd: - 2728322980640662 275 (-9.74861e+082) class: Neg. norm. non-zero
; hwf : - 2728322980640662 275 (-9.74861e+082) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010010 #b1001101100010110010100110010000101111111011110010110)))
(assert (= r (fp #b1 #b10100010010 #b1001101100010110010100110010000101111111011110010110)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
