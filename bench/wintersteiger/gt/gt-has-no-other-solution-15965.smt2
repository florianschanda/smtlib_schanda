(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.132191169343805814406778154079802334308624267578125p850 {- 595336100998434 850 (-8.49994e+255)}
; Y = -1.800840731206851952350689316517673432826995849609375p412 {- 3606666018646294 412 (-1.90473e+124)}
; -1.132191169343805814406778154079802334308624267578125p850 > -1.800840731206851952350689316517673432826995849609375p412 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11101010001 #b0010000111010111010001111100110100100110110100100010)))
(assert (= y (fp #b1 #b10110011011 #b1100110100000011111001011110110111010110100100010110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
