(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7303585895750563938833010979578830301761627197265625p305 {+ 3289242671857065 305 (1.12794e+092)}
; Y = -1.1156807532274422012363856993033550679683685302734375p693 {- 520979797129047 693 (-4.58487e+208)}
; 1.7303585895750563938833010979578830301761627197265625p305 M -1.1156807532274422012363856993033550679683685302734375p693 == 1.7303585895750563938833010979578830301761627197265625p305
; [HW: 1.7303585895750563938833010979578830301761627197265625p305] 

; mpf : + 3289242671857065 305
; mpfd: + 3289242671857065 305 (1.12794e+092) class: Pos. norm. non-zero
; hwf : + 3289242671857065 305 (1.12794e+092) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100110000 #b1011101011111000110001111101000010010011110110101001)))
(assert (= y (fp #b1 #b11010110100 #b0001110110011101010000001111101111100011011101010111)))
(assert (= r (fp #b0 #b10100110000 #b1011101011111000110001111101000010010011110110101001)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
