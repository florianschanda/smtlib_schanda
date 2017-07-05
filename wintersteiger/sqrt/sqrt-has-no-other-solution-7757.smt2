(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.7191438043698188398167303603258915245532989501953125p-1022 {+ 3238735769385717 -1023 (1.60015e-308)}
; 0.7191438043698188398167303603258915245532989501953125p-1022 S == 1.696046938465818332275603097514249384403228759765625p-512
; [HW: 1.696046938465818332275603097514249384403228759765625p-512] 

; mpf : + 3134716732707034 -512
; mpfd: + 3134716732707034 -512 (1.26497e-154) class: Pos. norm. non-zero
; hwf : + 3134716732707034 -512 (1.26497e-154) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000000000 #b1011100000011001110011101111000011100011101011110101)))
(assert (= r (fp #b0 #b00111111111 #b1011001000110000001000011101010100110001000011011010)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
