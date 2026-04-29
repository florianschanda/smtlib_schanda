(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.699214382115998400735179529874585568904876708984375p71 {- 3148981630749702 71 (-4.01216e+021)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.699214382115998400735179529874585568904876708984375p71 m +oo == -1.699214382115998400735179529874585568904876708984375p71
; [HW: -1.699214382115998400735179529874585568904876708984375p71] 

; mpf : - 3148981630749702 71
; mpfd: - 3148981630749702 71 (-4.01216e+021) class: Neg. norm. non-zero
; hwf : - 3148981630749702 71 (-4.01216e+021) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001000110 #b1011001011111111101101101011100000010100110000000110)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b10001000110 #b1011001011111111101101101011100000010100110000000110)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
