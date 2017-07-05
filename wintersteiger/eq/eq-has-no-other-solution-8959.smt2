(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6788050005625823057897605394828133285045623779296875p-138 {+ 3057065947590875 -138 (4.81793e-042)}
; Y = 0.08091426020724501455561039620079100131988525390625p-1022 {+ 364405432118308 -1023 (1.8004e-309)}
; 1.6788050005625823057897605394828133285045623779296875p-138 = 0.08091426020724501455561039620079100131988525390625p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101110101 #b1010110111000110001010100001110111000111000011011011)))
(assert (= y (fp #b0 #b00000000000 #b0001010010110110110011000000010101011110110000100100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
