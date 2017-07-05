(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.913530957417680866683440399356186389923095703125p-885 {+ 4114177679417680 -885 (7.41804e-267)}
; Y = -1.9826837776715502403845903245382942259311676025390625p232 {- 4425614294944625 232 (-1.3684e+070)}
; 1.913530957417680866683440399356186389923095703125p-885 - -1.9826837776715502403845903245382942259311676025390625p232 == 1.9826837776715502403845903245382942259311676025390625p232
; [HW: 1.9826837776715502403845903245382942259311676025390625p232] 

; mpf : + 4425614294944625 232
; mpfd: + 4425614294944625 232 (1.3684e+070) class: Pos. norm. non-zero
; hwf : + 4425614294944625 232 (1.3684e+070) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010001010 #b1110100111011101001010100011000111111110000101010000)))
(assert (= y (fp #b1 #b10011100111 #b1111101110010001001010011111111101101000101101110001)))
(assert (= r (fp #b0 #b10011100111 #b1111101110010001001010011111111101101000101101110001)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
