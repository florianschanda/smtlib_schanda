(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3890958869460912072923974847071804106235504150390625p-653 {+ 1752332091461809 -653 (3.71659e-197)}
; Y = 1.589505792603191469680723457713611423969268798828125p-282 {+ 2654898067900482 -282 (2.04552e-085)}
; 1.3890958869460912072923974847071804106235504150390625p-653 < 1.589505792603191469680723457713611423969268798828125p-282 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101110010 #b0110001110011011110010011011110101110001000010110001)))
(assert (= y (fp #b0 #b01011100101 #b1001011011101001110110100000010000001000100001000010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
