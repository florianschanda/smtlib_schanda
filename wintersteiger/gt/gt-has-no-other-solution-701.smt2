(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.020369525990506343049446513759903609752655029296875p563 {- 91736189660558 563 (-3.08067e+169)}
; Y = 1.406696270428770656479855460929684340953826904296875p375 {+ 1831597171955982 375 (1.08255e+113)}
; -1.020369525990506343049446513759903609752655029296875p563 > 1.406696270428770656479855460929684340953826904296875p375 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000110010 #b0000010100110110111011111110111111110110110110001110)))
(assert (= y (fp #b0 #b10101110110 #b0110100000011101001111110010110011100101100100001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
