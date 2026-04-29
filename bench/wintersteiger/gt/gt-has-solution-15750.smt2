(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.63442653258552894612876116298139095306396484375p-328 {+ 2857203095746144 -328 (2.98901e-099)}
; Y = -1.175280001028607745894305480760522186756134033203125p-225 {- 789390947317938 -225 (-2.17968e-068)}
; 1.63442653258552894612876116298139095306396484375p-328 > -1.175280001028607745894305480760522186756134033203125p-225 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010110111 #b1010001001101001110001101111100100101011011001100000)))
(assert (= y (fp #b1 #b01100011110 #b0010110011011111001001100111000000001111100010110010)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
