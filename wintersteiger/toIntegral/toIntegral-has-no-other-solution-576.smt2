(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.72964594087675482825261497055180370807647705078125 577 {- 3286033187444948 577 (-8.55588e+173)}
; -1.72964594087675482825261497055180370807647705078125 577 I == -1.72964594087675482825261497055180370807647705078125 577
; [HW: -1.72964594087675482825261497055180370807647705078125 577] 

; mpf : - 3286033187444948 577
; mpfd: - 3286033187444948 577 (-8.55588e+173) class: Neg. norm. non-zero
; hwf : - 3286033187444948 577 (-8.55588e+173) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001000000 #b1011101011001010000100111000110110111001100011010100)))
(assert (= r (fp #b1 #b11001000000 #b1011101011001010000100111000110110111001100011010100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
