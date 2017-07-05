(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8609976295293686465726068490766920149326324462890625p-393 {- 3877588603515345 -393 (-9.22481e-119)}
; Y = 1.2354661653270915255831141621456481516361236572265625p-414 {+ 1060445334425449 -414 (2.9202e-125)}
; -1.8609976295293686465726068490766920149326324462890625p-393 < 1.2354661653270915255831141621456481516361236572265625p-414 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01001110110 #b1101110001101010010101110011010011000011000111010001)))
(assert (= y (fp #b0 #b01001100001 #b0011110001000111100000101011011101100100111101101001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
