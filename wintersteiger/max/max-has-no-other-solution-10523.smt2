(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5702038774673485743704759443062357604503631591796875p-548 {- 2567969970087163 -548 (-1.70419e-165)}
; Y = 1.8824162686473686623145340490736998617649078369140625p388 {+ 3974049578665953 388 (1.18674e+117)}
; -1.5702038774673485743704759443062357604503631591796875p-548 M 1.8824162686473686623145340490736998617649078369140625p388 == 1.8824162686473686623145340490736998617649078369140625p388
; [HW: 1.8824162686473686623145340490736998617649078369140625p388] 

; mpf : + 3974049578665953 388
; mpfd: + 3974049578665953 388 (1.18674e+117) class: Pos. norm. non-zero
; hwf : + 3974049578665953 388 (1.18674e+117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111011011 #b1001000111111000111000011001110111000110010011111011)))
(assert (= y (fp #b0 #b10110000011 #b1110000111100110000010000101011101001100011111100001)))
(assert (= r (fp #b0 #b10110000011 #b1110000111100110000010000101011101001100011111100001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
