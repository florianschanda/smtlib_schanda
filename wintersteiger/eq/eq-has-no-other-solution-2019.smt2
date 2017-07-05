(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1992832555142165507078289010678417980670928955078125p-581 {+ 897491995275005 -581 (1.51528e-175)}
; Y = -1.627688858419028772317460607155226171016693115234375p-921 {- 2826859308880550 -921 (-9.18217e-278)}
; 1.1992832555142165507078289010678417980670928955078125p-581 = -1.627688858419028772317460607155226171016693115234375p-921 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110111010 #b0011001100000100001110100011100100010010111011111101)))
(assert (= y (fp #b1 #b00001100110 #b1010000010110000001101111000111011111001001010100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
