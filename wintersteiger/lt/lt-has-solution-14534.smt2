(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3578956612290802308251613794709555804729461669921875p283 {- 1611818766548803 283 (-2.11035e+085)}
; Y = 1.958391901387253053457015994354151189327239990234375p17 {+ 4316213409962534 17 (256690)}
; -1.3578956612290802308251613794709555804729461669921875p283 < 1.958391901387253053457015994354151189327239990234375p17 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011010 #b0101101110011111000011001101000001011011111101000011)))
(assert (= y (fp #b0 #b10000010000 #b1111010101011001001010111111000100110101101000100110)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
