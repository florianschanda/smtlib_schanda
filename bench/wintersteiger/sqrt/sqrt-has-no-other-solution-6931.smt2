(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.128569866806004906578664304106496274471282958984375p897 {+ 579027204238598 897 (1.19243e+270)}
; 1.128569866806004906578664304106496274471282958984375p897 S == 1.502378026201132144024086301214993000030517578125p448
; [HW: 1.502378026201132144024086301214993000030517578125p448] 

; mpf : + 2262509491598544 448
; mpfd: + 2262509491598544 448 (1.09199e+135) class: Pos. norm. non-zero
; hwf : + 2262509491598544 448 (1.09199e+135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110000000 #b0010000011101001111101000110110100101110110100000110)))
(assert (= r (fp #b0 #b10110111111 #b1000000010011011110110001010100011000011010011010000)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
