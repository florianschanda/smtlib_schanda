(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3984499340058735850078619478153996169567108154296875p472 {- 1794458974314651 472 (-1.70532e+142)}
; Y = 1.733315815649590252434109061141498386859893798828125p604 {+ 3302560834104386 604 (1.15079e+182)}
; -1.3984499340058735850078619478153996169567108154296875p472 > 1.733315815649590252434109061141498386859893798828125p604 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010111 #b0110011000000000110100001001101110100110000010011011)))
(assert (= y (fp #b0 #b11001011011 #b1011101110111010100101011101010111011010110001000010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
