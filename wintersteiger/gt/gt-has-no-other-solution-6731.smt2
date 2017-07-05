(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.3187698469912791932046047804760746657848358154296875p67 {- 1435611764126875 67 (-1.94616e+020)}
; Y = -1.1160008904763303316798328523873351514339447021484375p427 {- 522421567123847 427 (-3.86788e+128)}
; -1.3187698469912791932046047804760746657848358154296875p67 > -1.1160008904763303316798328523873351514339447021484375p427 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001000010 #b0101000110011010111001101001001111000111010010011011)))
(assert (= y (fp #b1 #b10110101010 #b0001110110110010001110111111111011100111000110000111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
