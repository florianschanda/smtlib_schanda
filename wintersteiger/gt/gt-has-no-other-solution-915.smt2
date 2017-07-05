(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.29173044149512605827112565748393535614013671875p-15 {- 1313837107610080 -15 (-3.94205e-005)}
; Y = -1.4720314800780389674628167995251715183258056640625p-505 {- 2125840797786600 -505 (-1.4053e-152)}
; -1.29173044149512605827112565748393535614013671875p-15 > -1.4720314800780389674628167995251715183258056640625p-505 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111110000 #b0100101010101110110110001010000101111000000111100000)))
(assert (= y (fp #b1 #b01000000110 #b0111100011010111000011100001100110011110000111101000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
