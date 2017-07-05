(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1140577749350499825453653102158568799495697021484375p602 {+ 513670552696199 602 (1.84912e+181)}
; Y = 1.844091436422840235564990507555194199085235595703125p-779 {+ 3801449878540530 -779 (5.79984e-235)}
; 1.1140577749350499825453653102158568799495697021484375p602 * 1.844091436422840235564990507555194199085235595703125p-779 == 1.027212201219004583663263474591076374053955078125p-176
; [HW: 1.027212201219004583663263474591076374053955078125p-176] 

; mpf : + 122552859269840 -176
; mpfd: + 122552859269840 -176 (1.07246e-053) class: Pos. norm. non-zero
; hwf : + 122552859269840 -176 (1.07246e-053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001011001 #b0001110100110010111000111110110100110011010110000111)))
(assert (= y (fp #b0 #b00011110100 #b1101100000010110011000000101101001000101000011110010)))
(assert (= r (fp #b0 #b01101001111 #b0000011011110111011000001111101001001001101011010000)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
