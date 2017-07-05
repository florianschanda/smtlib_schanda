(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.074979660736679054622300100163556635379791259765625p-86 {- 337678372154074 -86 (-1.38938e-026)}
; Y = 1.7148618694511064131091870876844041049480438232421875p-667 {+ 3219451648881379 -667 (2.80041e-201)}
; -1.074979660736679054622300100163556635379791259765625p-86 < 1.7148618694511064131091870876844041049480438232421875p-667 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110101001 #b0001001100110001110111011111011010111010101011011010)))
(assert (= y (fp #b0 #b00101100100 #b1011011100000001001011111111111001110011001011100011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
