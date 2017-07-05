(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.0659930501521877044268649115110747516155242919921875p-474 {+ 297206276074435 -474 (2.18543e-143)}
; Y = 1.9817009738745692271066900502773933112621307373046875p-471 {+ 4421188140130763 -471 (3.2502e-142)}
; 1.0659930501521877044268649115110747516155242919921875p-474 M 1.9817009738745692271066900502773933112621307373046875p-471 == 1.9817009738745692271066900502773933112621307373046875p-471
; [HW: 1.9817009738745692271066900502773933112621307373046875p-471] 

; mpf : + 4421188140130763 -471
; mpfd: + 4421188140130763 -471 (3.2502e-142) class: Pos. norm. non-zero
; hwf : + 4421188140130763 -471 (3.2502e-142) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000100101 #b0001000011100100111010111010100000101010101111000011)))
(assert (= y (fp #b0 #b01000101000 #b1111101101010000110000010100100100111110000111001011)))
(assert (= r (fp #b0 #b01000101000 #b1111101101010000110000010100100100111110000111001011)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
