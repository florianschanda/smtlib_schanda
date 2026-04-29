(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = +zero {+ 0 -1023 (0)}
; Y = 1.2615109667358852529872592640458606183528900146484375p-88 {+ 1177740692345031 -88 (4.07616e-027)}
; +zero M 1.2615109667358852529872592640458606183528900146484375p-88 == 1.2615109667358852529872592640458606183528900146484375p-88
; [HW: 1.2615109667358852529872592640458606183528900146484375p-88] 

; mpf : + 1177740692345031 -88
; mpfd: + 1177740692345031 -88 (4.07616e-027) class: Pos. norm. non-zero
; hwf : + 1177740692345031 -88 (4.07616e-027) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b0 #b01110100111 #b0100001011110010011000011111100110101101000011000111)))
(assert (= r (fp #b0 #b01110100111 #b0100001011110010011000011111100110101101000011000111)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
