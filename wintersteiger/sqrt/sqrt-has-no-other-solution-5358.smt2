(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.028638273474819175845595964347012341022491455078125p-391 {+ 128975317749730 -391 (2.03955e-118)}
; 1.028638273474819175845595964347012341022491455078125p-391 S == 1.434320935826301823823314407491125166416168212890625p-196
; [HW: 1.434320935826301823823314407491125166416168212890625p-196] 

; mpf : + 1956007604746538 -196
; mpfd: + 1956007604746538 -196 (1.42813e-059) class: Pos. norm. non-zero
; hwf : + 1956007604746538 -196 (1.42813e-059) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001111000 #b0000011101010100110101100111111111111100111111100010)))
(assert (= r (fp #b0 #b01100111011 #b0110111100101111101010000010011101010111100100101010)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
