(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.11937381289201720591108824010007083415985107421875p533 {+ 537611859258284 533 (3.14748e+160)}
; Y = -1.8751922321367595625218882560147903859615325927734375p698 {- 3941515410528663 698 (-2.46594e+210)}
; 1.11937381289201720591108824010007083415985107421875p533 > -1.8751922321367595625218882560147903859615325927734375p698 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000010100 #b0001111010001111010010000011111001011110101110101100)))
(assert (= y (fp #b1 #b11010111001 #b1110000000001100100110010001111010111101100110010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
