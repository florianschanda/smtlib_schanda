(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9872641662779566562591071487986482679843902587890625p-316 {+ 4446242531365649 -316 (1.4886e-095)}
; Y = 1.64597365880803447879543455201201140880584716796875p546 {+ 2909206729099020 546 (3.79141e+164)}
; 1.9872641662779566562591071487986482679843902587890625p-316 = 1.64597365880803447879543455201201140880584716796875p546 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011000011 #b1111110010111101010110000010101010101101001100010001)))
(assert (= y (fp #b0 #b11000100001 #b1010010101011110100001111001101010101000011100001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
