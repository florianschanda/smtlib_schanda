(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.732656858122520571185987137141637504100799560546875p-972 {+ 3299593153231022 -972 (4.34067e-293)}
; Y = -1.1305657333103444894817357635474763810634613037109375p-786 {- 588015787883823 -786 (-2.77792e-237)}
; 1.732656858122520571185987137141637504100799560546875p-972 = -1.1305657333103444894817357635474763810634613037109375p-786 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000110011 #b1011101110001111011001100101110011010011100010101110)))
(assert (= y (fp #b1 #b00011101101 #b0010000101101100110000011000001010001011110100101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
