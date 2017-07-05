(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.11548533168228214407236009719781577587127685546875p393 {- 520099696731084 393 (-2.25036e+118)}
; Y = -1.267072793982410683355510627734474837779998779296875p272 {- 1202788935459982 272 (-9.61525e+081)}
; -1.11548533168228214407236009719781577587127685546875p393 > -1.267072793982410683355510627734474837779998779296875p272 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110001000 #b0001110110010000011100100101101010111110001111001100)))
(assert (= y (fp #b1 #b10100001111 #b0100010001011110111000011111001111001110010010001110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
