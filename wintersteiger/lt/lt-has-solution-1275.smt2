(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.025066608888696162438236569869332015514373779296875p-329 {- 112889970450574 -329 (-9.37311e-100)}
; Y = -1.661765686402230546292457802337594330310821533203125p-725 {- 2980327698687666 -725 (-9.41506e-219)}
; -1.025066608888696162438236569869332015514373779296875p-329 < -1.661765686402230546292457802337594330310821533203125p-725 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010110110 #b0000011001101010110000111110100101100110000010001110)))
(assert (= y (fp #b1 #b00100101010 #b1010100101101001011110011101110010110110011010110010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
