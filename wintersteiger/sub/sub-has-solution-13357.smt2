(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7788326090493968845152039648382924497127532958984375p762 {- 3507550247898855 762 (-4.31511e+229)}
; Y = -zero {- 0 -1023 (-0)}
; -1.7788326090493968845152039648382924497127532958984375p762 - -zero == -1.7788326090493968845152039648382924497127532958984375p762
; [HW: -1.7788326090493968845152039648382924497127532958984375p762] 

; mpf : - 3507550247898855 762
; mpfd: - 3507550247898855 762 (-4.31511e+229) class: Neg. norm. non-zero
; hwf : - 3507550247898855 762 (-4.31511e+229) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111001 #b1100011101100001100100101110100011101100111011100111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b11011111001 #b1100011101100001100100101110100011101100111011100111)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
