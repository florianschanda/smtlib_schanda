(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.17335413192282889127682210528291761875152587890625p-100 {+ 780717603930788 -100 (9.25613e-031)}
; Y = 1.49952879360442903333705544355325400829315185546875p661 {+ 2249677688737740 661 (1.43477e+199)}
; 1.17335413192282889127682210528291761875152587890625p-100 = 1.49952879360442903333705544355325400829315185546875p661 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110011011 #b0010110001100000111011111011011100111100001010100100)))
(assert (= y (fp #b0 #b11010010100 #b0111111111100001000111100111011111110000111111001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
