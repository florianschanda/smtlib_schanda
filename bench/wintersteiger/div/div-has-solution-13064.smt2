(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1742348689572599251818019183701835572719573974609375p-612 {+ 784684090910863 -612 (6.90872e-185)}
; Y = 1.6393338557913093023188366714748553931713104248046875p551 {+ 2879303714707083 551 (1.20836e+166)}
; 1.1742348689572599251818019183701835572719573974609375p-612 / 1.6393338557913093023188366714748553931713104248046875p551 == +zero
; [HW: +zero] 

; mpf : + 0 -1023
; mpfd: + 0 -1023 (0) class: +0
; hwf : + 0 -1023 (0) class: +0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011011 #b0010110010011010101010000000011111111110100010001111)))
(assert (= y (fp #b0 #b11000100110 #b1010001110101011011000100011000111011001011010001011)))
(assert (= r (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
