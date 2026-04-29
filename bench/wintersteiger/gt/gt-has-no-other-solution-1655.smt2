(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9023135409935043593776526904548518359661102294921875p809 {+ 4063658926989699 809 (6.49454e+243)}
; Y = 1.0326732574197563518936249238322488963603973388671875p77 {+ 147147269940595 77 (1.56053e+023)}
; 1.9023135409935043593776526904548518359661102294921875p809 > 1.0326732574197563518936249238322488963603973388671875p77 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100101000 #b1110011011111110000001010010110101001110000110000011)))
(assert (= y (fp #b0 #b10001001100 #b0000100001011101010001100100110000010010010101110011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
