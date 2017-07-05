(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2583634923946191985777431909809820353984832763671875p-703 {- 1163565728074547 -703 (-2.99033e-212)}
; Y = 1.0934846682454784083660115356906317174434661865234375p493 {+ 421017517075191 493 (2.79641e+148)}
; -1.2583634923946191985777431909809820353984832763671875p-703 < 1.0934846682454784083660115356906317174434661865234375p493 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101000000 #b0100001000100100000111000001111001010000101100110011)))
(assert (= y (fp #b0 #b10111101100 #b0001011111101110100111000111100011001010101011110111)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
