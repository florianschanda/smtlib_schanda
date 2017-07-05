(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.6246452109806475139208714608685113489627838134765625p-206 {- 2813151939411209 -206 (-1.57972e-062)}
; Y = 1.72152080600393997400487933191470801830291748046875p-329 {+ 3249440833059404 -329 (1.57414e-099)}
; -1.6246452109806475139208714608685113489627838134765625p-206 + 1.72152080600393997400487933191470801830291748046875p-329 == -1.6246452109806475139208714608685113489627838134765625p-206
; [HW: -1.6246452109806475139208714608685113489627838134765625p-206] 

; mpf : - 2813151939411209 -206
; mpfd: - 2813151939411209 -206 (-1.57972e-062) class: Neg. norm. non-zero
; hwf : - 2813151939411209 -206 (-1.57972e-062) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100110001 #b1001111111101000101111111010000011000011110100001001)))
(assert (= y (fp #b0 #b01010110110 #b1011100010110101100101100110100100101011101001001100)))
(assert (= r (fp #b1 #b01100110001 #b1001111111101000101111111010000011000011110100001001)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
