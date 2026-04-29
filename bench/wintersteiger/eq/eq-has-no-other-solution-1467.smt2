(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7417888936562551105424745401251129806041717529296875p-140 {+ 3340720185057883 -140 (1.24967e-042)}
; Y = -1.615634073149948335412773303687572479248046875p691 {- 2772569382434688 691 (-1.65985e+208)}
; 1.7417888936562551105424745401251129806041717529296875p-140 = -1.615634073149948335412773303687572479248046875p691 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101110011 #b1011110111100101111000000111111011001010001001011011)))
(assert (= y (fp #b1 #b11010110010 #b1001110110011010001100011101001001111011011110000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
