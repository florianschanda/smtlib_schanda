(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1177477621734741575210136943496763706207275390625p393 {+ 530288777848168 393 (2.25493e+118)}
; Y = -1.971107604498143928140052594244480133056640625p-692 {- 4373479845754496 -692 (-9.59298e-209)}
; 1.1177477621734741575210136943496763706207275390625p393 > -1.971107604498143928140052594244480133056640625p-692 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110001000 #b0001111000100100101101111010001110110110010101101000)))
(assert (= y (fp #b1 #b00101001011 #b1111100010011010100000100000101000110111011010000000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
