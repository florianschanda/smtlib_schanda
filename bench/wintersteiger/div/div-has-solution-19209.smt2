(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.90637855040920367599710516515187919139862060546875p-684 {+ 4081966101879500 -684 (2.37516e-206)}
; Y = 1.427524314639627700529445064603351056575775146484375p567 {+ 1925398344102854 567 (6.8959e+170)}
; 1.90637855040920367599710516515187919139862060546875p-684 / 1.427524314639627700529445064603351056575775146484375p567 == +zero
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
(assert (= x (fp #b0 #b00101010011 #b1110100000001000011011001011011111001101101011001100)))
(assert (= y (fp #b0 #b11000110110 #b0110110101110010001110111100010110011111001111000110)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
