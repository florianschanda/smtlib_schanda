(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5351450806739845855730663970462046563625335693359375p-893 {+ 2410079185912511 -893 (2.32468e-269)}
; 1.5351450806739845855730663970462046563625335693359375p-893 S == 1.7522243467512854664391852566041052341461181640625p-447
; [HW: 1.7522243467512854664391852566041052341461181640625p-447] 

; mpf : + 3387717287728104 -447
; mpfd: + 3387717287728104 -447 (4.82149e-135) class: Pos. norm. non-zero
; hwf : + 3387717287728104 -447 (4.82149e-135) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010000010 #b1000100011111111010001001001110000011100001010111111)))
(assert (= r (fp #b0 #b01001000000 #b1100000010010001110001100101100010001101001111101000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
