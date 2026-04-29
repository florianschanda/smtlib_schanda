(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.102735551511478728770043744589202105998992919921875p496 {+ 462679791504798 496 (2.25605e+149)}
; Y = -1.71428177913144974553460997412912547588348388671875p-221 {- 3216839154333932 -221 (-5.0869e-067)}
; 1.102735551511478728770043744589202105998992919921875p496 = -1.71428177913144974553460997412912547588348388671875p-221 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111101111 #b0001101001001100111000001000100111100000110110011110)))
(assert (= y (fp #b1 #b01100100010 #b1011011011011011001010111011000101111111100011101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
