(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.004423878689770344152520920033566653728485107421875p-603 {- 19923378418782 -603 (-3.02573e-182)}
; Y = -1.041796874134465422656603550422005355358123779296875p-1006 {- 188236386777230 -1006 (-1.51917e-303)}
; -1.004423878689770344152520920033566653728485107421875p-603 > -1.041796874134465422656603550422005355358123779296875p-1006 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110100100 #b0000000100100001111011000101111001001011010001011110)))
(assert (= y (fp #b1 #b00000010001 #b0000101010110011001100110010111101111011100010001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
