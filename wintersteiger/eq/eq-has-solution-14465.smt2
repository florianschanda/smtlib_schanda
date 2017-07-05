(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.069857523403082044666234651231206953525543212890625p-37 {- 314610316367146 -37 (-7.78424e-012)}
; Y = -1.8526104806709955408194900883245281875133514404296875p-298 {- 3839816243042075 -298 (-3.63786e-090)}
; -1.069857523403082044666234651231206953525543212890625p-37 = -1.8526104806709955408194900883245281875133514404296875p-298 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111011010 #b0001000111100010001011101100001001100101010100101010)))
(assert (= y (fp #b1 #b01011010101 #b1101101001000100101011100011001010110101011100011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
