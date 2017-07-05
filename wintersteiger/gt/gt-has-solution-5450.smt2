(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.9353389202905797450426916839205659925937652587890625p609 {+ 4212392012885777 609 (4.11173e+183)}
; Y = 1.184778176475020483593425524304620921611785888671875p-105 {+ 832166926719102 -105 (2.9207e-032)}
; 1.9353389202905797450426916839205659925937652587890625p609 > 1.184778176475020483593425524304620921611785888671875p-105 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100000 #b1110111101110010010111110001100101010010111100010001)))
(assert (= y (fp #b0 #b01110010110 #b0010111101001101100111110110000011111001100001111110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
