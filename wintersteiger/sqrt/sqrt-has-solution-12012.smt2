(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9084372944197076638062071651802398264408111572265625p1007 {+ 4091237860638057 1007 (2.61748e+303)}
; 1.9084372944197076638062071651802398264408111572265625p1007 S == 1.9536823152292226435378097448847256600856781005859375p503
; [HW: 1.9536823152292226435378097448847256600856781005859375p503] 

; mpf : + 4295003319496159 503
; mpfd: + 4295003319496159 503 (5.11613e+151) class: Pos. norm. non-zero
; hwf : + 4295003319496159 503 (5.11613e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11111101110 #b1110100010001111010110001011010111111111110101101001)))
(assert (= r (fp #b0 #b10111110110 #b1111010000100100100001100011001010101110110111011111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
