(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.611765879347355934214647277258336544036865234375p915 {+ 2755148586266736 915 (4.46424e+275)}
; Y = -1.2389012830539842813237783047952689230442047119140625p457 {- 1075915729340257 457 (-4.61046e+137)}
; 1.611765879347355934214647277258336544036865234375p915 * -1.2389012830539842813237783047952689230442047119140625p457 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110010010 #b1001110010011100101100000100110010011011000001110000)))
(assert (= y (fp #b1 #b10111001000 #b0011110100101000101000100110110110110000011101100001)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
