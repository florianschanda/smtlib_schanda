(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1056411940015806738557557764579541981220245361328125p-675 {+ 475765641940493 -675 (7.05289e-204)}
; Y = -1.4675773375723133451487001366331242024898529052734375p692 {- 2105781123257559 692 (-3.01549e+208)}
; 1.1056411940015806738557557764579541981220245361328125p-675 > -1.4675773375723133451487001366331242024898529052734375p692 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101011100 #b0001101100001011010011010010000101011000111000001101)))
(assert (= y (fp #b1 #b11010110011 #b0111011110110011001001011111110100111001010011010111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
