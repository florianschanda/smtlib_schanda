(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.477226087930713749329925121855922043323516845703125p-981 {- 2149235231776242 -981 (-7.22805e-296)}
; Y = -1.5164204260268927537680383466067723929882049560546875p673 {- 2325750838221227 673 (-5.94301e+202)}
; -1.477226087930713749329925121855922043323516845703125p-981 = -1.5164204260268927537680383466067723929882049560546875p673 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000101010 #b0111101000101011011111010010100001110101110111110010)))
(assert (= y (fp #b1 #b11010100000 #b1000010000110100001000010000100011000101100110101011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
