(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.248334328918047742007502165506593883037567138671875p-960 {+ 1118398391178622 -960 (1.28096e-289)}
; Y = 1.34158292379471344446528746630065143108367919921875p-723 {+ 1538352728317996 -723 (3.0404e-218)}
; 1.248334328918047742007502165506593883037567138671875p-960 > 1.34158292379471344446528746630065143108367919921875p-723 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111111 #b0011111110010010110101101010110100101101010101111110)))
(assert (= y (fp #b0 #b00100101100 #b0101011101110001111110100111111010010010000000101100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
