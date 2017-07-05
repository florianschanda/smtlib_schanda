(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.84398711410837368163129212916828691959381103515625p920 {+ 3800980052603972 920 (1.63438e+277)}
; Y = 1.63653379483341776534643940976820886135101318359375p-237 {+ 2866693361220508 -237 (7.40996e-072)}
; 1.84398711410837368163129212916828691959381103515625p920 > 1.63653379483341776534643940976820886135101318359375p-237 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110010111 #b1101100000001111100010100001110101010111010001000100)))
(assert (= y (fp #b0 #b01100010010 #b1010001011110011111000001111011110011011101110011100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
