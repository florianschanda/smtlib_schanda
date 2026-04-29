(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.064526188494273384321786579675972461700439453125p464 {- 290600118458448 464 (-5.07077e+139)}
; Y = -1.8795944197888179161282096174545586109161376953125p-631 {- 3961341101198088 -631 (-2.10929e-190)}
; -1.064526188494273384321786579675972461700439453125p464 = -1.8795944197888179161282096174545586109161376953125p-631 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111001111 #b0001000010000100110010011100110101010001100001010000)))
(assert (= y (fp #b1 #b00110001000 #b1110000100101101000110011001001010111100101100001000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
