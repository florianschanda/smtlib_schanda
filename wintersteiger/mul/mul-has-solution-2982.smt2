(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.78891620220196045920602045953273773193359375p-150 {- 3552962714263296 -150 (-1.2534e-045)}
; Y = -1.1307912563017585849678425802267156541347503662109375p557 {- 589031453143919 557 (-5.33445e+167)}
; -1.78891620220196045920602045953273773193359375p-150 * -1.1307912563017585849678425802267156541347503662109375p557 == 1.0114453998532628720141701705870218575000762939453125p408
; [HW: 1.0114453998532628720141701705870218575000762939453125p408] 

; mpf : + 51545498514261 408
; mpfd: + 51545498514261 408 (6.68622e+122) class: Pos. norm. non-zero
; hwf : + 51545498514261 408 (6.68622e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101101001 #b1100100111110110011010011000011110111101111100000000)))
(assert (= y (fp #b1 #b11000101100 #b0010000101111011100010010010100001101011001101101111)))
(assert (= r (fp #b0 #b10110010111 #b0000001011101110000101011111001000001111001101010101)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
