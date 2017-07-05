(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3087798919554207710547188980854116380214691162109375 488 {+ 1390621006349935 488 (1.04593e+147)}
; 1.3087798919554207710547188980854116380214691162109375 488 I == 1.3087798919554207710547188980854116380214691162109375 488
; [HW: 1.3087798919554207710547188980854116380214691162109375 488] 

; mpf : + 1390621006349935 488
; mpfd: + 1390621006349935 488 (1.04593e+147) class: Pos. norm. non-zero
; hwf : + 1390621006349935 488 (1.04593e+147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100111 #b0100111100001100001100101111000110011100011001101111)))
(assert (= r (fp #b0 #b10111100111 #b0100111100001100001100101111000110011100011001101111)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
