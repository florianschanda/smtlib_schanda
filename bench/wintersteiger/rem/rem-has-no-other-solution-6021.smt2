(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.66316027357147078191701439209282398223876953125p-75 {+ 2986608360943392 -75 (4.40235e-023)}
; Y = -1.5732625372036057598279512603767216205596923828125p-221 {- 2581744948935624 -221 (-4.66844e-067)}
; 1.66316027357147078191701439209282398223876953125p-75 % -1.5732625372036057598279512603767216205596923828125p-221 == 1.3574513662772886846141773276031017303466796875p-223
; [HW: 1.3574513662772886846141773276031017303466796875p-223] 

; mpf : + 1609817839969472 -223
; mpfd: + 1609817839969472 -223 (1.00701e-067) class: Pos. norm. non-zero
; hwf : + 1609817839969472 -223 (1.00701e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110110100 #b1010100111000100110111110010011011111110111100100000)))
(assert (= y (fp #b1 #b01100100010 #b1001001011000001010101010110100101001111101111001000)))
(assert (= r (fp #b0 #b01100100000 #x5b81eec8124c0)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
