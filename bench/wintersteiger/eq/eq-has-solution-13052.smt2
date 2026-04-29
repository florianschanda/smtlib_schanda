(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.366441705490994973359875075402669608592987060546875p-871 {+ 1650306728302254 -871 (8.6789e-263)}
; Y = 1.93903820293002571162332969834096729755401611328125p-265 {+ 4229052100802324 -265 (3.27068e-080)}
; 1.366441705490994973359875075402669608592987060546875p-871 = 1.93903820293002571162332969834096729755401611328125p-265 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011000 #b0101110111001111000111111010010011111001011010101110)))
(assert (= y (fp #b0 #b01011110110 #b1111000001100100110011101100001101000111011100010100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
