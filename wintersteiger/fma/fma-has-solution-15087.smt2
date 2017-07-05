(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0132259433930983494320798854460008442401885986328125p130 {- 59564353736781 130 (-1.37913e+039)}
; Y = 1.8646430520284773546535461719031445682048797607421875p670 {+ 3894006126923939 670 (9.13467e+201)}
; Z = -1.379824323374376771056404322735033929347991943359375p300 {- 1710576681215094 300 (-2.81075e+090)}
; -1.0132259433930983494320798854460008442401885986328125p130 x 1.8646430520284773546535461719031445682048797607421875p670 -1.379824323374376771056404322735033929347991943359375p300 == -1.889304715482940100201858513173647224903106689453125p800
; [HW: -1.889304715482940100201858513173647224903106689453125p800] 

; mpf : - 4005072385267794 800
; mpfd: - 4005072385267794 800 (-1.25979e+241) class: Neg. norm. non-zero
; hwf : - 4005072385267794 800 (-1.25979e+241) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010000001 #b0000001101100010110001101000001001010101000001001101)))
(assert (= y (fp #b0 #b11010011101 #b1101110101011001001111110011111100101101000010100011)))
(assert (= z (fp #b1 #b10100101011 #b0110000100111100001010101011011100011110010001110110)))
(assert (= r (fp #b1 #b11100011111 #b1110001110101001011110010100110100101101100001010010)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
