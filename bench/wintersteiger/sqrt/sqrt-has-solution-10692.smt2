(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6196949256435715369661920703947544097900390625p-324 {+ 2790857836211776 -324 (4.7393e-098)}
; 1.6196949256435715369661920703947544097900390625p-324 S == 1.2726723559673838170880344478064216673374176025390625p-162
; [HW: 1.2726723559673838170880344478064216673374176025390625p-162] 

; mpf : + 1228007120728945 -162
; mpfd: + 1228007120728945 -162 (2.17699e-049) class: Pos. norm. non-zero
; hwf : + 1228007120728945 -162 (2.17699e-049) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010111011 #b1001111010100100010100111001111100100010111001000000)))
(assert (= r (fp #b0 #b01101011101 #b0100010111001101110110110000001101100111001101110001)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
