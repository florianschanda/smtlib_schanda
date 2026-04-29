(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8422566295806748204455516315647400915622711181640625p-362 {- 3793186643129857 -362 (-1.96106e-109)}
; Y = -1.9578542049510507805365477906889282166957855224609375p-297 {- 4313791840492815 -297 (-7.68903e-090)}
; -1.8422566295806748204455516315647400915622711181640625p-362 > -1.9578542049510507805365477906889282166957855224609375p-297 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010101 #b1101011110011110001000010110011011100011011000000001)))
(assert (= y (fp #b1 #b01011010110 #b1111010100110101111011101110010010011001110100001111)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
