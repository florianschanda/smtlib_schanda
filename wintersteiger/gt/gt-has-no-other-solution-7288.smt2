(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2146197961925098152136115459143184125423431396484375p-106 {- 966561634158919 -106 (-1.49713e-032)}
; Y = -1.75403248113808984953720937483012676239013671875p324 {- 3395860401078752 324 (-5.99455e+097)}
; -1.2146197961925098152136115459143184125423431396484375p-106 > -1.75403248113808984953720937483012676239013671875p324 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110010101 #b0011011011110001010100101010110110111000100101000111)))
(assert (= y (fp #b1 #b10101000011 #b1100000100001000010001011100111010011100000111100000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
