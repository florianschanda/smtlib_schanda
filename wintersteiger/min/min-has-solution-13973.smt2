(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.30075160765740971413606530404649674892425537109375p-869 {- 1354464828176988 -869 (-3.30467e-262)}
; Y = -1.5869416219552590074926001761923544108867645263671875p32 {- 2643350069925939 32 (-6.81586e+009)}
; -1.30075160765740971413606530404649674892425537109375p-869 m -1.5869416219552590074926001761923544108867645263671875p32 == -1.5869416219552590074926001761923544108867645263671875p32
; [HW: -1.5869416219552590074926001761923544108867645263671875p32] 

; mpf : - 2643350069925939 32
; mpfd: - 2643350069925939 32 (-6.81586e+009) class: Neg. norm. non-zero
; hwf : - 2643350069925939 32 (-6.81586e+009) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011010 #b0100110011111110000011101010111100011011101001011100)))
(assert (= y (fp #b1 #b10000011111 #b1001011001000001110011100101111011110101100000110011)))
(assert (= r (fp #b1 #b10000011111 #b1001011001000001110011100101111011110101100000110011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
