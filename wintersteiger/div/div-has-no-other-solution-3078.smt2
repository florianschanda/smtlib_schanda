(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8952813616289365672429312326130457222461700439453125p559 {- 4031988806623829 559 (-3.57636e+168)}
; Y = -1.9730182072969004725138120193150825798511505126953125p-138 {- 4382084435807029 -138 (-5.66228e-042)}
; -1.8952813616289365672429312326130457222461700439453125p559 / -1.9730182072969004725138120193150825798511505126953125p-138 == 1.9212000726800528838111858931370079517364501953125p696
; [HW: 1.9212000726800528838111858931370079517364501953125p696] 

; mpf : + 4148716304055560 696
; mpfd: + 4148716304055560 696 (6.31611e+209) class: Pos. norm. non-zero
; hwf : + 4148716304055560 696 (6.31611e+209) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101110 #b1110010100110001001010001100100011101010001001010101)))
(assert (= y (fp #b1 #b01101110101 #b1111100100010111101110001010001011000000101100110101)))
(assert (= r (fp #b0 #b11010110111 #b1110101111010011110001001001100100111011110100001000)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
