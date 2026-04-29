(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.639989394894924235046573812724091112613677978515625p-813 {- 2882256000369850 -813 (-3.0023e-245)}
; Y = 1.20400657641791131169384243548847734928131103515625p-789 {+ 918763941536836 -789 (3.69796e-238)}
; -1.639989394894924235046573812724091112613677978515625p-813 = 1.20400657641791131169384243548847734928131103515625p-789 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011010010 #b1010001111010110010110000101000011011100010010111010)))
(assert (= y (fp #b0 #b00011101010 #b0011010000111001110001100110010111100010010001000100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
