(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5686958350920299221087361729587428271770477294921875p-995 {+ 2561178351007619 -995 (4.68482e-300)}
; Y = 1.058335160236424155044687722693197429180145263671875p-660 {+ 262718205903358 -660 (2.21221e-199)}
; 1.5686958350920299221087361729587428271770477294921875p-995 < 1.058335160236424155044687722693197429180145263671875p-660 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000011100 #b1001000110010110000011001101110100010111011110000011)))
(assert (= y (fp #b0 #b00101101011 #b0000111011101111000011011001010101101100000111111110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
