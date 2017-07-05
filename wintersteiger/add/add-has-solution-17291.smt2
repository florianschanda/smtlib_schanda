(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2936883707177393443288337948615662753582000732421875p-690 {- 1322654836927459 -690 (-2.51845e-208)}
; Y = 1.7636734326900376235158773852162994444370269775390625p308 {+ 3439279386895601 308 (9.19723e+092)}
; -1.2936883707177393443288337948615662753582000732421875p-690 + 1.7636734326900376235158773852162994444370269775390625p308 == 1.763673432690037401471272460184991359710693359375p308
; [HW: 1.763673432690037401471272460184991359710693359375p308] 

; mpf : + 3439279386895600 308
; mpfd: + 3439279386895600 308 (9.19723e+092) class: Pos. norm. non-zero
; hwf : + 3439279386895600 308 (9.19723e+092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101001101 #b0100101100101111001010010011101101110010101111100011)))
(assert (= y (fp #b0 #b10100110011 #b1100001110000000000110100010001000111010010011110001)))
(assert (= r (fp #b0 #b10100110011 #b1100001110000000000110100010001000111010010011110000)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
