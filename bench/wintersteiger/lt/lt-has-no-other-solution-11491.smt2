(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9093160656325103285979594147647731006145477294921875p-188 {+ 4095195494344579 -188 (4.86675e-057)}
; Y = -1.414206110197922416915616850019432604312896728515625p479 {- 1865418483541946 479 (-2.2074e+144)}
; 1.9093160656325103285979594147647731006145477294921875p-188 < -1.414206110197922416915616850019432604312896728515625p479 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101000011 #b1110100011001000111100000000101110011110011110000011)))
(assert (= y (fp #b1 #b10111011110 #b0110101000001001011010010110000100011010011110111010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
