(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0777729342673592061174758782726712524890899658203125p570 {+ 350258157785989 570 (4.16509e+171)}
; 1.0777729342673592061174758782726712524890899658203125p570 S == 1.0381584340876679473097965455963276326656341552734375p285
; [HW: 1.0381584340876679473097965455963276326656341552734375p285] 

; mpf : + 171850309538263 285
; mpfd: + 171850309538263 285 (6.45375e+085) class: Pos. norm. non-zero
; hwf : + 171850309538263 285 (6.45375e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111001 #b0001001111101000111011010101000100110001001110000101)))
(assert (= r (fp #b0 #b10100011100 #b0000100111000100110000000100101001111001000111010111)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
