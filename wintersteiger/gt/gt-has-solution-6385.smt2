(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5182728993716694265714295397629030048847198486328125p-532 {+ 2334093636486477 -532 (1.07992e-160)}
; Y = 1.1545816973496483281991231706342659890651702880859375p599 {+ 696174074582175 599 (2.39548e+180)}
; 1.5182728993716694265714295397629030048847198486328125p-532 > 1.1545816973496483281991231706342659890651702880859375p599 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111101011 #b1000010010101101100010000110000100110100010101001101)))
(assert (= y (fp #b0 #b11001010110 #b0010011110010010101010101000011010101101010010011111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
