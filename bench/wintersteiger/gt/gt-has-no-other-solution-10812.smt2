(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.59559441445199023945633598486892879009246826171875p-348 {+ 2682318782989932 -348 (2.78281e-105)}
; Y = 1.83773575832151703224326411145739257335662841796875p69 {+ 3772826449011724 69 (1.08481e+021)}
; 1.59559441445199023945633598486892879009246826171875p-348 > 1.83773575832151703224326411145739257335662841796875p69 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010100011 #b1001100001111000111000000010001111000000011001101100)))
(assert (= y (fp #b0 #b10001000100 #b1101011001110101110110011100010010101110010000001100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
