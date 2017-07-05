(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.47104428627935224227485377923585474491119384765625p-166 {+ 2121394872162692 -166 (1.5727e-050)}
; Y = -1.7984182947861395707178644443047232925891876220703125p467 {- 3595756334884645 467 (-6.85328e+140)}
; Z = -1.8855448090019819584739479978452436625957489013671875p870 {- 3988139271841203 870 (-1.48434e+262)}
; 1.47104428627935224227485377923585474491119384765625p-166 x -1.7984182947861395707178644443047232925891876220703125p467 -1.8855448090019819584739479978452436625957489013671875p870 == -1.8855448090019819584739479978452436625957489013671875p870
; [HW: -1.8855448090019819584739479978452436625957489013671875p870] 

; mpf : - 3988139271841203 870
; mpfd: - 3988139271841203 870 (-1.48434e+262) class: Neg. norm. non-zero
; hwf : - 3988139271841203 870 (-1.48434e+262) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101011001 #b0111100010010110010110111011110010001001100110000100)))
(assert (= y (fp #b1 #b10111010010 #b1100110001100101001001000011000010100010011100100101)))
(assert (= z (fp #b1 #b11101100101 #b1110001010110011000100001000100111001110010110110011)))
(assert (= r (fp #b1 #b11101100101 #b1110001010110011000100001000100111001110010110110011)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
