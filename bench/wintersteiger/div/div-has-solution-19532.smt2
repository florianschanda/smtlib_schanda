(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.51426967201789874906125987763516604900360107421875p-665 {+ 2316064703267756 -665 (9.89136e-201)}
; Y = 1.6412622028704959564748833145131357014179229736328125p609 {+ 2887988217894349 609 (3.48695e+183)}
; 1.51426967201789874906125987763516604900360107421875p-665 / 1.6412622028704959564748833145131357014179229736328125p609 == +zero
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
(assert (= x (fp #b0 #b00101100110 #b1000001110100111001011010101111010100100001110101100)))
(assert (= y (fp #b0 #b11001100000 #b1010010000101001110000100111110101111101010111001101)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
