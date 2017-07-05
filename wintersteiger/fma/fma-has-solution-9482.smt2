(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2135972725876860156546399593935348093509674072265625p-90 {- 961956597233257 -90 (-9.80336e-028)}
; Y = -1.2333113403672710806091572521836496889591217041015625p-857 {- 1050740865539353 -857 (-1.28341e-258)}
; Z = -1.9282452016411395501194192547700367867946624755859375p61 {- 4180444744219487 61 (-4.44623e+018)}
; -1.2135972725876860156546399593935348093509674072265625p-90 x -1.2333113403672710806091572521836496889591217041015625p-857 -1.9282452016411395501194192547700367867946624755859375p61 == -1.9282452016411395501194192547700367867946624755859375p61
; [HW: -1.9282452016411395501194192547700367867946624755859375p61] 

; mpf : - 4180444744219487 61
; mpfd: - 4180444744219487 61 (-4.44623e+018) class: Neg. norm. non-zero
; hwf : - 4180444744219487 61 (-4.44623e+018) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01110100101 #b0011011010101110010011111001010001000111011001101001)))
(assert (= y (fp #b1 #b00010100110 #b0011101110111010010010101100000010101001110100011001)))
(assert (= z (fp #b1 #b10000111100 #b1110110110100001011110100011111110110111101101011111)))
(assert (= r (fp #b1 #b10000111100 #b1110110110100001011110100011111110110111101101011111)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
