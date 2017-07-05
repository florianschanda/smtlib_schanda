(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4257619911834378267911915827426128089427947998046875p-111 {+ 1917461544842251 -111 (5.49184e-034)}
; Y = -1.300934472473617820043045867350883781909942626953125p447 {- 1355288378095122 447 (-4.72785e+134)}
; 1.4257619911834378267911915827426128089427947998046875p-111 - -1.300934472473617820043045867350883781909942626953125p447 == 1.300934472473617820043045867350883781909942626953125p447
; [HW: 1.300934472473617820043045867350883781909942626953125p447] 

; mpf : + 1355288378095122 447
; mpfd: + 1355288378095122 447 (4.72785e+134) class: Pos. norm. non-zero
; hwf : + 1355288378095122 447 (4.72785e+134) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010000 #b0110110011111110101111001110010000000011010000001011)))
(assert (= y (fp #b1 #b10110111110 #b0100110100001010000010101010010110000011011000010010)))
(assert (= r (fp #b0 #b10110111110 #b0100110100001010000010101010010110000011011000010010)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
