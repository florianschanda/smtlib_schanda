(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5182264881778950726953780758776701986789703369140625p-736 {- 2333884619051489 -736 (-4.2001e-222)}
; Y = -1.735363293986725619078015370178036391735076904296875p-691 {- 3311781856780558 -691 (-1.68913e-208)}
; -1.5182264881778950726953780758776701986789703369140625p-736 * -1.735363293986725619078015370178036391735076904296875p-691 == +zero
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
(assert (= x (fp #b1 #b00100011111 #b1000010010101010011111011011101010100101000111100001)))
(assert (= y (fp #b1 #b00101001100 #b1011110001000000110001001101001001011010000100001110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
