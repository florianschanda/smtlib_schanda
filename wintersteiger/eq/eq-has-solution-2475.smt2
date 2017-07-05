(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3486447002909531800440845472621731460094451904296875p-290 {+ 1570156142315035 -290 (6.77952e-088)}
; Y = -1.93151907816946266649438257445581257343292236328125p-143 {- 4195188973332500 -143 (-1.73225e-043)}
; 1.3486447002909531800440845472621731460094451904296875p-290 = -1.93151907816946266649438257445581257343292236328125p-143 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011011101 #b0101100101000000110001110111000110101100011000011011)))
(assert (= y (fp #b1 #b01101110000 #b1110111001111000000010001100100001010110100000010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
