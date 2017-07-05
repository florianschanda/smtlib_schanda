(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5371365450969445287654480125638656318187713623046875p-535 {+ 2419047944345675 -535 (1.36667e-161)}
; Y = -1.0193431609361602863117468587006442248821258544921875p216 {- 87113852384259 216 (-1.07349e+065)}
; 1.5371365450969445287654480125638656318187713623046875p-535 = -1.0193431609361602863117468587006442248821258544921875p216 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101000 #b1000100110000001110001111101011010101101100001001011)))
(assert (= y (fp #b1 #b10011010111 #b0000010011110011101011000110001110011111010000000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
