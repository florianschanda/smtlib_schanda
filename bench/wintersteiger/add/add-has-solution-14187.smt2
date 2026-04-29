(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5429364124548714531925952542223967611789703369140625p-376 {- 2445168224817633 -376 (-1.00247e-113)}
; Y = +zero {+ 0 -1023 (0)}
; -1.5429364124548714531925952542223967611789703369140625p-376 + +zero == -1.5429364124548714531925952542223967611789703369140625p-376
; [HW: -1.5429364124548714531925952542223967611789703369140625p-376] 

; mpf : - 2445168224817633 -376
; mpfd: - 2445168224817633 -376 (-1.00247e-113) class: Neg. norm. non-zero
; hwf : - 2445168224817633 -376 (-1.00247e-113) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010000111 #b1000101011111101111000010111011101001101000111100001)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b1 #b01010000111 #b1000101011111101111000010111011101001101000111100001)))
(assert (= (fp.add roundTowardZero x y) r))
(check-sat)
(exit)
