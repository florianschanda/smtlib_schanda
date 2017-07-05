(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4321803659598355551452186773531138896942138671875p-258 {- 1946367335093560 -258 (-3.09214e-078)}
; Y = -1.3203040997672770284765420001349411904811859130859375p488 {- 1442521424357151 488 (-1.05514e+147)}
; -1.4321803659598355551452186773531138896942138671875p-258 = -1.3203040997672770284765420001349411904811859130859375p488 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011111101 #b0110111010100011010111110101100111000101010100111000)))
(assert (= y (fp #b1 #b10111100111 #b0101000111111111011100110001000101000110011100011111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
