(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9668786453033877403839824182796292006969451904296875p-123 {+ 4354434306700827 -123 (1.84964e-037)}
; Y = -1.2477262295146704929038605769164860248565673828125p19 {- 1115659754932168 19 (-654168)}
; 1.9668786453033877403839824182796292006969451904296875p-123 < -1.2477262295146704929038605769164860248565673828125p19 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000100 #b1111011110000101010110111110000011000111011000011011)))
(assert (= y (fp #b1 #b10000010010 #b0011111101101010111111000111011000100000011111001000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
