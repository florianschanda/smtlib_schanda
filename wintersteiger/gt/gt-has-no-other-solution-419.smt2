(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.30382324837415808360674418509006500244140625p-375 {- 1368298268164352 -375 (-1.69422e-113)}
; Y = -1.359616881346608519010032978258095681667327880859375p-850 {- 1619570452828726 -850 (-1.81101e-256)}
; -1.30382324837415808360674418509006500244140625p-375 > -1.359616881346608519010032978258095681667327880859375p-850 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001000 #b0100110111000111010111000100001110001000000100000000)))
(assert (= y (fp #b1 #b00010101101 #b0101110000001111110110100001100001111001001000110110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
