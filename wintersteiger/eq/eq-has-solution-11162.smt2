(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.263756768100012362054940240341238677501678466796875p668 {+ 1187854882531662 668 (1.54775e+201)}
; Y = 1.0107912250229074135887685770285315811634063720703125p-552 {+ 48599356992037 -552 (6.85652e-167)}
; 1.263756768100012362054940240341238677501678466796875p668 = 1.0107912250229074135887685770285315811634063720703125p-552 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010011011 #b0100001110000101100100000100010100010110100101001110)))
(assert (= y (fp #b0 #b00111010111 #b0000001011000011001101101011011010001110101000100101)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
