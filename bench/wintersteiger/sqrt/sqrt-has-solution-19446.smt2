(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.336118163060078689596821277518756687641143798828125p261 {+ 1513741633909826 261 (4.95078e+078)}
; 1.336118163060078689596821277518756687641143798828125p261 S == 1.6346976252873670620857637914014048874378204345703125p130
; [HW: 1.6346976252873670620857637914014048874378204345703125p130] 

; mpf : + 2858423988737125 130
; mpfd: + 2858423988737125 130 (2.22504e+039) class: Pos. norm. non-zero
; hwf : + 2858423988737125 130 (2.22504e+039) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000100 #b0101011000001011110101110000010111101111010001000010)))
(assert (= r (fp #b0 #b10010000001 #b1010001001111011100010110010011101110101010001100101)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
