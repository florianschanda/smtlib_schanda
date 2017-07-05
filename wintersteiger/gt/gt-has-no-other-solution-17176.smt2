(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8220817629459060693619676385424099862575531005859375p227 {- 3702327121271263 227 (-3.92986e+068)}
; Y = -1.53803973553375694649503202526830136775970458984375p-787 {- 2423115552460348 -787 (-1.88956e-237)}
; -1.8220817629459060693619676385424099862575531005859375p227 > -1.53803973553375694649503202526830136775970458984375p-787 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100010 #b1101001001110011111100110100111001111101100111011111)))
(assert (= y (fp #b1 #b00011101100 #b1000100110111100111110001101110000010000111000111100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
