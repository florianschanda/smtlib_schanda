(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.79151324558370728112777214846573770046234130859375p80 {- 3564658757869596 80 (-2.16581e+024)}
; Y = 1.3697410739363375942190259593189693987369537353515625p622 {+ 1665165762803257 622 (2.38394e+187)}
; Z = -1.047112110780956673039554516435600817203521728515625p205 {- 212174084557754 205 (-5.38446e+061)}
; -1.79151324558370728112777214846573770046234130859375p80 x 1.3697410739363375942190259593189693987369537353515625p622 -1.047112110780956673039554516435600817203521728515625p205 == -1.22695463848850039312310400418937206268310546875p703
; [HW: -1.22695463848850039312310400418937206268310546875p703] 

; mpf : - 1022112825326816 703
; mpfd: - 1022112825326816 703 (-5.16316e+211) class: Neg. norm. non-zero
; hwf : - 1022112825326816 703 (-5.16316e+211) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10001001111 #b1100101010100000100111001011000000100010000000011100)))
(assert (= y (fp #b0 #b11001101101 #b0101111010100111010110011101110010001011011000111001)))
(assert (= z (fp #b1 #b10011001100 #b0000110000001111100010100000111100001100101110111010)))
(assert (= r (fp #b1 #b11010111110 #b0011101000011001101100101111110111111011110011100000)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
