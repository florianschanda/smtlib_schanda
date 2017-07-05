(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.60552709491742628955535110435448586940765380859375p529 {- 2727051599032860 529 (-2.82153e+159)}
; Y = -1.7132035498653392924239824424148537218570709228515625p970 {- 3211983241412857 970 (-1.70964e+292)}
; Z = -1.9173819311011612853690166957676410675048828125p753 {- 4131520923063616 753 (-9.08438e+226)}
; -1.60552709491742628955535110435448586940765380859375p529 x -1.7132035498653392924239824424148537218570709228515625p970 -1.9173819311011612853690166957676410675048828125p753 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000010000 #b1001101100000011110100101101110110000011001000011100)))
(assert (= y (fp #b1 #b11111001001 #b1011011010010100100000100000001000010000000011111001)))
(assert (= z (fp #b1 #b11011110000 #b1110101011011001100010101101000000000101010101000000)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
