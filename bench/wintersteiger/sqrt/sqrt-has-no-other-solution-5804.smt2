(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9234023725734399334896806976757943630218505859375p-340 {+ 4158634581034776 -340 (8.5876e-103)}
; 1.9234023725734399334896806976757943630218505859375p-340 S == 1.3868678280836423954980318740126676857471466064453125p-170
; [HW: 1.3868678280836423954980318740126676857471466064453125p-170] 

; mpf : + 1742297806399125 -170
; mpfd: + 1742297806399125 -170 (9.26693e-052) class: Pos. norm. non-zero
; hwf : + 1742297806399125 -170 (9.26693e-052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101011 #b1110110001100100000110010000111101000000011100011000)))
(assert (= r (fp #b0 #b01101010101 #b0110001100001001110001010001110101111110011010010101)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
