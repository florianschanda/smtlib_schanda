(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.17213811596793693325935237226076424121856689453125p-462 {+ 775241154929460 -462 (9.84285e-140)}
; Y = -1.40222297735468881541009977809153497219085693359375p-71 {- 1811451250934428 -71 (-5.93865e-022)}
; Z = -1.3388731391589494545968364036525599658489227294921875p983 {- 1526148943242115 983 (-1.09452e+296)}
; 1.17213811596793693325935237226076424121856689453125p-462 x -1.40222297735468881541009977809153497219085693359375p-71 -1.3388731391589494545968364036525599658489227294921875p983 == -1.3388731391589494545968364036525599658489227294921875p983
; [HW: -1.3388731391589494545968364036525599658489227294921875p983] 

; mpf : - 1526148943242115 983
; mpfd: - 1526148943242115 983 (-1.09452e+296) class: Neg. norm. non-zero
; hwf : - 1526148943242115 983 (-1.09452e+296) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000110001 #b0010110000010001001111100101101001111010001100110100)))
(assert (= y (fp #b1 #b01110111000 #b0110011011111000000101011100010101110000001010011100)))
(assert (= z (fp #b1 #b11111010110 #b0101011011000000011000111101101000101110001110000011)))
(assert (= r (fp #b1 #b11111010110 #b0101011011000000011000111101101000101110001110000011)))
(assert  (not (= (fp.fma roundTowardZero x y z) r)))
(check-sat)
(exit)
