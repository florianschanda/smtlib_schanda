(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6697811213695479271024169065640307962894439697265625p-54 {+ 3016426008619689 -54 (9.26915e-017)}
; Y = 1.2372809664989716793570551089942455291748046875p277 {+ 1068618472306880 277 (3.00453e+083)}
; 1.6697811213695479271024169065640307962894439697265625p-54 M 1.2372809664989716793570551089942455291748046875p277 == 1.2372809664989716793570551089942455291748046875p277
; [HW: 1.2372809664989716793570551089942455291748046875p277] 

; mpf : + 1068618472306880 277
; mpfd: + 1068618472306880 277 (3.00453e+083) class: Pos. norm. non-zero
; hwf : + 1068618472306880 277 (3.00453e+083) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111001001 #b1010101101110110110001101000101111000010101010101001)))
(assert (= y (fp #b0 #b10100010100 #b0011110010111110011100100000011100010011100011000000)))
(assert (= r (fp #b0 #b10100010100 #b0011110010111110011100100000011100010011100011000000)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
