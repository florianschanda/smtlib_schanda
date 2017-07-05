(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.13303821754561706569575108005665242671966552734375p-792 {+ 599150866964476 -792 (4.34999e-239)}
; Y = -1.5256643967229945868524509933195076882839202880859375p-301 {- 2367381981203615 -301 (-3.74481e-091)}
; 1.13303821754561706569575108005665242671966552734375p-792 % -1.5256643967229945868524509933195076882839202880859375p-301 == 1.13303821754561706569575108005665242671966552734375p-792
; [HW: 1.13303821754561706569575108005665242671966552734375p-792] 

; mpf : + 599150866964476 -792
; mpfd: + 599150866964476 -792 (4.34999e-239) class: Pos. norm. non-zero
; hwf : + 599150866964476 -792 (4.34999e-239) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011100111 #b0010001000001110110010101110100101111001111111111100)))
(assert (= y (fp #b1 #b01011010010 #b1000011010010001111100010010000010011000110010011111)))
(assert (= r (fp #b0 #b00011100111 #x220ecae979ffc)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
