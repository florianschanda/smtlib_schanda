(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0412864038153670787067994751851074397563934326171875p-601 {- 185937432838355 -601 (-1.25471e-181)}
; Y = -1.865371581119181332297785047558136284351348876953125p502 {- 3897287130265362 502 (-2.44244e+151)}
; Z = NaN {- 695783851939257 1024 (-1.#SNAN)}
; -1.0412864038153670787067994751851074397563934326171875p-601 x -1.865371581119181332297785047558136284351348876953125p502 NaN == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2947583665624505 1024 (-1.#QNAN) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00110100110 #b0000101010010001101111101110101000101000000011010011)))
(assert (= y (fp #b1 #b10111110101 #b1101110110001000111111011110111111001011011100010010)))
(assert (= z (_ NaN 11 53)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
