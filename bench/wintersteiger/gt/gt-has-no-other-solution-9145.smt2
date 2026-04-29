(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3965313811014590239523158743395470082759857177734375p-697 {+ 1785818580169239 -697 (2.12395e-210)}
; Y = 1.711032751399744977760519759613089263439178466796875p317 {+ 3202206834252110 317 (4.56843e+095)}
; 1.3965313811014590239523158743395470082759857177734375p-697 > 1.711032751399744977760519759613089263439178466796875p317 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101000110 #b0110010110000011000101001010000110101011001000010111)))
(assert (= y (fp #b0 #b10100111100 #b1011011000000110001111100000110110100101100101001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
