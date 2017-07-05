(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.954005231707977241484286423656158149242401123046875p583 {- 4296457606029550 583 (-6.18605e+175)}
; Y = 1.0551683838073222521103389226482249796390533447265625p-95 {+ 248456312757289 -95 (2.66362e-029)}
; -1.954005231707977241484286423656158149242401123046875p583 > 1.0551683838073222521103389226482249796390533447265625p-95 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000110 #b1111010000111001101011111101011001100110000011101110)))
(assert (= y (fp #b0 #b01110100000 #b0000111000011111100000111110010000111001110000101001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
