(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.809509362524767350777210594969801604747772216796875p-828 {+ 3645706063419470 -828 (1.01094e-249)}
; Y = 1.2891729186037219623273131219320930540561676025390625p-125 {+ 1302319048469361 -125 (3.03083e-038)}
; 1.809509362524767350777210594969801604747772216796875p-828 > 1.2891729186037219623273131219320930540561676025390625p-125 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011000011 #b1100111100111100000000010110110111011001100001001110)))
(assert (= y (fp #b0 #b01110000010 #b0100101000000111001111001000010001001010101101110001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
