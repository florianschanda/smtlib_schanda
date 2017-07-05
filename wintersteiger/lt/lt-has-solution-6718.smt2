(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.59598769272092955162634098087437450885772705078125p-810 {+ 2684089950855380 -810 (2.3374e-244)}
; Y = -1.69320623353210120143330641440115869045257568359375p29 {- 3121923335026076 29 (-9.09033e+008)}
; 1.59598769272092955162634098087437450885772705078125p-810 < -1.69320623353210120143330641440115869045257568359375p29 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00011010101 #b1001100010010010101001100100000100001110000011010100)))
(assert (= y (fp #b1 #b10000011100 #b1011000101110101111101101011011001100111010110011100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
