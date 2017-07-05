(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.399010720478208735784164673532359302043914794921875p-944 {- 1796984532062494 -944 (-9.40817e-285)}
; Y = 1.113235884158959354550688658491708338260650634765625p996 {+ 509969085703258 996 (7.45526e+299)}
; -1.399010720478208735784164673532359302043914794921875p-944 > 1.113235884158959354550688658491708338260650634765625p996 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001001111 #b0110011000100101100100010000101100110101000100011110)))
(assert (= y (fp #b0 #b11111100011 #b0001110011111101000001101110001100110010010001011010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
