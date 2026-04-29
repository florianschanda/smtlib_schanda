(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.574627433433124945594272503512911498546600341796875p-861 {- 2587891895086286 -861 (-1.02412e-259)}
; Y = -1.0226028047233259865578247627126984298229217529296875p790 {- 101793982929499 790 (-6.65892e+237)}
; -1.574627433433124945594272503512911498546600341796875p-861 = -1.0226028047233259865578247627126984298229217529296875p790 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00010100010 #b1001001100011010110010001001000111111010110011001110)))
(assert (= y (fp #b1 #b11100010101 #b0000010111001001010011000010001100010101101001011011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
