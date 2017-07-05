(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0115479539058120916905636477167718112468719482421875p-888 {+ 52007360907107 -888 (4.90174e-268)}
; Y = -1.6093451252720230026937997536151669919490814208984375p79 {- 2744246479115111 79 (-9.72789e+023)}
; 1.0115479539058120916905636477167718112468719482421875p-888 > -1.6093451252720230026937997536151669919490814208984375p79 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000111 #b0000001011110100110011101000010001011100011101100011)))
(assert (= y (fp #b1 #b10001001110 #b1001101111111110000010101100100100000101001101100111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
