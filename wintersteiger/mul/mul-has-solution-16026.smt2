(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.094945585201102300487718821386806666851043701171875p770 {+ 427596902132158 770 (6.79969e+231)}
; Y = -1.1348938001976136558113239516387693583965301513671875p-904 {- 607507668304563 -904 (-8.39149e-273)}
; 1.094945585201102300487718821386806666851043701171875p770 * -1.1348938001976136558113239516387693583965301513671875p-904 == -1.242646956198478758182091041817329823970794677734375p-134
; [HW: -1.242646956198478758182091041817329823970794677734375p-134] 

; mpf : - 1092784741518054 -134
; mpfd: - 1092784741518054 -134 (-5.70595e-041) class: Neg. norm. non-zero
; hwf : - 1092784741518054 -134 (-5.70595e-041) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100000001 #b0001100001001110010110101001011101010110100110111110)))
(assert (= y (fp #b1 #b00001110111 #b0010001010001000011001100110110001001000001010110011)))
(assert (= r (fp #b1 #b01101111001 #b0011111000011110000111000110010101011000101011100110)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
