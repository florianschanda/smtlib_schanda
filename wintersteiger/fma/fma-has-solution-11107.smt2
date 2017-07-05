(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.461469369169928089746690602623857557773590087890625p-227 {- 2078273279036586 -227 (-6.77611e-069)}
; Y = -1.3835812841999668432180214949767105281352996826171875p-762 {- 1727496528589267 -762 (-5.70359e-230)}
; Z = 1.914649644390525207171549482154659926891326904296875p162 {+ 4119215797651726 162 (1.11931e+049)}
; -1.461469369169928089746690602623857557773590087890625p-227 x -1.3835812841999668432180214949767105281352996826171875p-762 1.914649644390525207171549482154659926891326904296875p162 == 1.914649644390525207171549482154659926891326904296875p162
; [HW: 1.914649644390525207171549482154659926891326904296875p162] 

; mpf : + 4119215797651726 162
; mpfd: + 4119215797651726 162 (1.11931e+049) class: Pos. norm. non-zero
; hwf : + 4119215797651726 162 (1.11931e+049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01100011100 #b0111011000100010110110110100100010110000110010101010)))
(assert (= y (fp #b1 #b00100000101 #b0110001000110010011000100000111011111111000111010011)))
(assert (= z (fp #b0 #b10010100001 #b1110101000100110011110101010010111110100100100001110)))
(assert (= r (fp #b0 #b10010100001 #b1110101000100110011110101010010111110100100100001110)))
(assert (= (fp.fma roundTowardZero x y z) r))
(check-sat)
(exit)
