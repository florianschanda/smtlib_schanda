(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.271524322991175903752036902005784213542938232421875p-233 {+ 1222836839845086 -233 (9.21161e-071)}
; Y = -1.753540748520575842661628485075198113918304443359375p700 {- 3393645834245750 700 (-9.22386e+210)}
; 1.271524322991175903752036902005784213542938232421875p-233 / -1.753540748520575842661628485075198113918304443359375p700 == -1.450236413455385342530234993319027125835418701171875p-934
; [HW: -1.450236413455385342530234993319027125835418701171875p-934] 

; mpf : - 2027684543866302 -934
; mpfd: - 2027684543866302 -934 (-9.98672e-282) class: Neg. norm. non-zero
; hwf : - 2027684543866302 -934 (-9.98672e-282) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010110 #b0100010110000010100111100011011101010000110011011110)))
(assert (= y (fp #b1 #b11010111011 #b1100000011101000000010111110011100011001011001110110)))
(assert (= r (fp #b1 #b00001011001 #b0111001101000010101100011000111101000010010110111110)))
(assert (= (fp.div roundTowardZero x y) r))
(check-sat)
(exit)
