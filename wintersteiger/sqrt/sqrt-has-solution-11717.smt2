(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.90412854306436596374396685860119760036468505859375p379 {+ 4071832969639708 379 (2.34458e+114)}
; 1.90412854306436596374396685860119760036468505859375p379 S == 1.9514756176106151652760445358580909669399261474609375p189
; [HW: 1.9514756176106151652760445358580909669399261474609375p189] 

; mpf : + 4285065236923279 189
; mpfd: + 4285065236923279 189 (1.5312e+057) class: Pos. norm. non-zero
; hwf : + 4285065236923279 189 (1.5312e+057) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101111010 #b1110011101110100111101111101101111010111011100011100)))
(assert (= r (fp #b0 #b10010111100 #b1111001110010011111001111111010010010100001110001111)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
