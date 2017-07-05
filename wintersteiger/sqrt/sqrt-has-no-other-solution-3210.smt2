(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9008363669976409138229200834757648408412933349609375p847 {+ 4057006326732367 847 (1.78382e+255)}
; 1.9008363669976409138229200834757648408412933349609375p847 S == 1.949787868973258841975848554284311830997467041015625p423
; [HW: 1.949787868973258841975848554284311830997467041015625p423] 

; mpf : + 4277464292788986 423
; mpfd: + 4277464292788986 423 (4.22353e+127) class: Pos. norm. non-zero
; hwf : + 4277464292788986 423 (4.22353e+127) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101001110 #b1110011010011101001101100100111101001101011001001111)))
(assert (= r (fp #b0 #b10110100110 #b1111001100100101010011000011101101100000101011111010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
