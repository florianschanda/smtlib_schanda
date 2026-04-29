(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6502447232535739640724159471574239432811737060546875p-895 {+ 2928441893344427 -895 (6.24744e-270)}
; Y = 1.862978649017798193909811743651516735553741455078125p-417 {+ 3886510322145250 -417 (5.50427e-126)}
; 1.6502447232535739640724159471574239432811737060546875p-895 > 1.862978649017798193909811743651516735553741455078125p-417 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010000000 #b1010011001110110011100000010110011000101010010101011)))
(assert (= y (fp #b0 #b01001011110 #b1101110011101100001010110011001010101101011111100010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
