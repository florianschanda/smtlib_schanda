(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2759360882292540839699768184800632297992706298828125p-88 {- 1242705664127341 -88 (-4.12277e-027)}
; Y = 1.8707328261617133247085575931123457849025726318359375p908 {+ 3921432031441151 908 (4.04807e+273)}
; -1.2759360882292540839699768184800632297992706298828125p-88 = 1.8707328261617133247085575931123457849025726318359375p908 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110100111 #b0100011010100011101111110101101010111011000101101101)))
(assert (= y (fp #b0 #b11110001011 #b1101111011101000010110001011001111101011000011111111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
