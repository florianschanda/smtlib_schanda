(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0480853484074110770762899846886284649372100830078125p-517 {- 216557157169597 -517 (-2.44281e-156)}
; Y = -1.32531309473899394646423388621769845485687255859375p981 {- 1465079932245276 981 (-2.7086e+295)}
; -1.0480853484074110770762899846886284649372100830078125p-517 + -1.32531309473899394646423388621769845485687255859375p981 == -1.3253130947389941685088388112490065395832061767578125p981
; [HW: -1.3253130947389941685088388112490065395832061767578125p981] 

; mpf : - 1465079932245277 981
; mpfd: - 1465079932245277 981 (-2.7086e+295) class: Neg. norm. non-zero
; hwf : - 1465079932245277 981 (-2.7086e+295) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111010 #b0000110001001111010100100100011011010011100110111101)))
(assert (= y (fp #b1 #b11111010100 #b0101001101000111101110000000111011011101010100011100)))
(assert (= r (fp #b1 #b11111010100 #b0101001101000111101110000000111011011101010100011101)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
