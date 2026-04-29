(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9412724889033678987715347830089740455150604248046875p299 {+ 4239114430279307 299 (1.97722e+090)}
; Y = -1.6721909490716397872489551446051336824893951416015625p-951 {- 3027278907760857 -951 (-8.78537e-287)}
; 1.9412724889033678987715347830089740455150604248046875p299 > -1.6721909490716397872489551446051336824893951416015625p-951 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100101010 #b1111000011110111001110111101110001110110111010001011)))
(assert (= y (fp #b1 #b00001001000 #b1010110000010100101101001011111011101110000011011001)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
