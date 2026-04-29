(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3509929857737557057362209889106452465057373046875p-588 {- 1580731879940344 -588 (-1.33357e-177)}
; Y = -1.12332011189459368694087970652617514133453369140625p-956 {- 555384409975780 -956 (-1.84428e-288)}
; -1.3509929857737557057362209889106452465057373046875p-588 * -1.12332011189459368694087970652617514133453369140625p-956 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110110011 #b0101100111011010101011010010001100000110000011111000)))
(assert (= y (fp #b1 #b00001000011 #b0001111110010001111010000010011110000110101111100100)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
