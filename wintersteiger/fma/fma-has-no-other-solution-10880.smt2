(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4913758119057554107911300889099948108196258544921875p-106 {+ 2212959923397635 -106 (1.83826e-032)}
; Y = -1.64018311181742593163335186545737087726593017578125p102 {- 2883128423829844 102 (-8.31672e+030)}
; Z = -1.0680370166137402865302874488406814634799957275390625p560 {- 306411482669041 560 (-4.03073e+168)}
; 1.4913758119057554107911300889099948108196258544921875p-106 x -1.64018311181742593163335186545737087726593017578125p102 -1.0680370166137402865302874488406814634799957275390625p560 == -1.0680370166137402865302874488406814634799957275390625p560
; [HW: -1.0680370166137402865302874488406814634799957275390625p560] 

; mpf : - 306411482669041 560
; mpfd: - 306411482669041 560 (-4.03073e+168) class: Neg. norm. non-zero
; hwf : - 306411482669041 560 (-4.03073e+168) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110010101 #b0111110111001010110011100010001000101110010000000011)))
(assert (= y (fp #b1 #b10001100101 #b1010001111100011000010100101100010110101000101010100)))
(assert (= z (fp #b1 #b11000101111 #b0001000101101010110111111011100101000101111111110001)))
(assert (= r (fp #b1 #b11000101111 #b0001000101101010110111111011100101000101111111110001)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
