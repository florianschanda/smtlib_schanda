(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3371935580378002672574666576110757887363433837890625 428 {- 1518584782330769 428 (-9.26899e+128)}
; -1.3371935580378002672574666576110757887363433837890625 428 I == -1.3371935580378002672574666576110757887363433837890625 428
; [HW: -1.3371935580378002672574666576110757887363433837890625 428] 

; mpf : - 1518584782330769 428
; mpfd: - 1518584782330769 428 (-9.26899e+128) class: Neg. norm. non-zero
; hwf : - 1518584782330769 428 (-9.26899e+128) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101011 #b0101011001010010010100010010100000110001101110010001)))
(assert (= r (fp #b1 #b10110101011 #b0101011001010010010100010010100000110001101110010001)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
