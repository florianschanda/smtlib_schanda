(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7879078315622132233642105347826145589351654052734375p-307 {- 3548421416625879 -307 (-6.85704e-093)}
; Y = -1.0879212526623629475608368011307902634143829345703125p-865 {- 395962120728165 -865 (-4.42233e-261)}
; -1.7879078315622132233642105347826145589351654052734375p-307 = -1.0879212526623629475608368011307902634143829345703125p-865 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011001100 #b1100100110110100010100111110000011010010011011010111)))
(assert (= y (fp #b1 #b00010011110 #b0001011010000010000000011101100011001110111001100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
