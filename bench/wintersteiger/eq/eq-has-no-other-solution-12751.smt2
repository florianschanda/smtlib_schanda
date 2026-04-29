(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9961317038346511054669463192112743854522705078125p696 {+ 4486178370201672 696 (6.56245e+209)}
; Y = 1.3639095556650355778316452415310777723789215087890625p616 {+ 1638902939289617 616 (3.70905e+185)}
; 1.9961317038346511054669463192112743854522705078125p696 = 1.3639095556650355778316452415310777723789215087890625p616 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110111 #b1111111100000010011111001100001001111010100001001000)))
(assert (= y (fp #b0 #b11001100111 #b0101110100101001001011010011100001001000100000010001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
