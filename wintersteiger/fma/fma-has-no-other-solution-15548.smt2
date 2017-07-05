(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.63792847453321055439801057218573987483978271484375p749 {+ 2872974440196796 749 (4.85022e+225)}
; Y = -1.912842714139880495594070453080348670482635498046875p461 {- 4111078107248238 461 (-1.13896e+139)}
; Z = -1.5685524067730842734391671910998411476612091064453125p-124 {- 2560532407283861 -124 (-7.3753e-038)}
; 1.63792847453321055439801057218573987483978271484375p749 x -1.912842714139880495594070453080348670482635498046875p461 -1.5685524067730842734391671910998411476612091064453125p-124 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011101100 #b1010001101001111010001111100111101001110101010111100)))
(assert (= y (fp #b1 #b10111001100 #b1110100110110000000011110110001110011111011001101110)))
(assert (= z (fp #b1 #b01110000011 #b1001000110001100101001101000100100100111000010010101)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
