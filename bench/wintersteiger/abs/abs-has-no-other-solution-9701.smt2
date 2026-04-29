(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9303475874253057664731159093207679688930511474609375p406 {- 4189913048053647 406 (-3.19017e+122)}
; -1.9303475874253057664731159093207679688930511474609375p406 | == 1.9303475874253057664731159093207679688930511474609375p406
; [HW: 1.9303475874253057664731159093207679688930511474609375p406] 

; mpf : + 4189913048053647 406
; mpfd: + 4189913048053647 406 (3.19017e+122) class: Pos. norm. non-zero
; hwf : + 4189913048053647 406 (3.19017e+122) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110010101 #b1110111000101011010000100110110111100111011110001111)))
(assert (= r (fp #b0 #b10110010101 #b1110111000101011010000100110110111100111011110001111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
