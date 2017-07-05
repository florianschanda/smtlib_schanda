(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.9183870096503896629513974403380416333675384521484375p577 {+ 4136047394443399 577 (9.48951e+173)}
; Y = 1.4016665119249918092236839584074914455413818359375p-861 {+ 1808945153432600 -861 (9.1163e-260)}
; Z = 1.921505370300054860166483194916509091854095458984375p-585 {+ 4150091242303238 -585 (1.51738e-176)}
; 1.9183870096503896629513974403380416333675384521484375p577 x 1.4016665119249918092236839584074914455413818359375p-861 1.921505370300054860166483194916509091854095458984375p-585 == 1.3444694141694386591012744247564114630222320556640625p-283
; [HW: 1.3444694141694386591012744247564114630222320556640625p-283] 

; mpf : + 1551352325294017 -283
; mpfd: + 1551352325294017 -283 (8.65092e-086) class: Pos. norm. non-zero
; hwf : + 1551352325294017 -283 (8.65092e-086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000000 #b1110101100011011011010010011101110000101000010000111)))
(assert (= y (fp #b0 #b00010100010 #b0110011011010011100111011101010010011101110000011000)))
(assert (= z (fp #b0 #b00110110110 #b1110101111100111110001101010010010000110111100000110)))
(assert (= r (fp #b0 #b01011100100 #b0101100000101111001001011100010001010100011111000001)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
