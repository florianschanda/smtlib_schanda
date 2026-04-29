(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.207036729545535536090028472244739532470703125p5 {- 932410538033280 5 (-38.6252)}
; Y = 0.6529210054572038846032455694512464106082916259765625p-1022 {+ 2940494796879433 -1023 (1.4528e-308)}
; -1.207036729545535536090028472244739532470703125p5 = 0.6529210054572038846032455694512464106082916259765625p-1022 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000000100 #b0011010100000000010110111110111001111000000010000000)))
(assert (= y (fp #b0 #b00000000000 #b1010011100100101110101001011110101001111011001001001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
