(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.418339828581090866777003611787222325801849365234375p-463 {- 1884035096112038 -463 (-5.95514e-140)}
; Y = -1.3892834480977380717803271181765012443065643310546875p-12 {- 1753176791794475 -12 (-0.000339181)}
; -1.418339828581090866777003611787222325801849365234375p-463 m -1.3892834480977380717803271181765012443065643310546875p-12 == -1.3892834480977380717803271181765012443065643310546875p-12
; [HW: -1.3892834480977380717803271181765012443065643310546875p-12] 

; mpf : - 1753176791794475 -12
; mpfd: - 1753176791794475 -12 (-0.000339181) class: Neg. norm. non-zero
; hwf : - 1753176791794475 -12 (-0.000339181) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000110000 #b0110101100011000010100011010101001011110101110100110)))
(assert (= y (fp #b1 #b01111110011 #b0110001110101000000101000111111001110100001100101011)))
(assert (= r (fp #b1 #b01111110011 #b0110001110101000000101000111111001110100001100101011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
