(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.193265154674573835791306919418275356292724609375p-528 {- 870388878576112 -528 (-1.358e-159)}
; Y = 1.1322565665749586560906436716322787106037139892578125p-388 {+ 595630623944285 -388 (1.796e-117)}
; -1.193265154674573835791306919418275356292724609375p-528 * 1.1322565665749586560906436716322787106037139892578125p-388 == -1.351082307045369912401611145469360053539276123046875p-916
; [HW: -1.351082307045369912401611145469360053539276123046875p-916] 

; mpf : - 1581134147185902 -916
; mpfd: - 1581134147185902 -916 (-2.43897e-276) class: Neg. norm. non-zero
; hwf : - 1581134147185902 -916 (-2.43897e-276) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111101111 #b0011000101111001110100110011111011001000100111110000)))
(assert (= y (fp #b0 #b01001111011 #b0010000111011011100100001111110000011110111001011101)))
(assert (= r (fp #b1 #b00001101011 #b0101100111100000100001111011001011110110110011101110)))
(assert  (not (= (fp.mul roundTowardZero x y) r)))
(check-sat)
(exit)
