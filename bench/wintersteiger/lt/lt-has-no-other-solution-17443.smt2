(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.55634598286667458211240955279208719730377197265625p218 {- 2505559561127428 218 (-6.55609e+065)}
; Y = -1.8727594216689193995506457213195972144603729248046875p149 {- 3930559006212235 149 (-1.33645e+045)}
; -1.55634598286667458211240955279208719730377197265625p218 < -1.8727594216689193995506457213195972144603729248046875p149 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011011001 #b1000111001101100101100001011100110101100011000000100)))
(assert (= y (fp #b1 #b10010010100 #b1101111101101101001010010101010101011000000010001011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
