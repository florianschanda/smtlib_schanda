(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.72299680134553501176242207293398678302764892578125p-383 {- 3256088125129812 -383 (-8.74573e-116)}
; Y = -1.643029283706961773958710182341746985912322998046875p599 {- 2895946442490990 599 (-3.40889e+180)}
; -1.72299680134553501176242207293398678302764892578125p-383 > -1.643029283706961773958710182341746985912322998046875p599 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010000000 #b1011100100010110010100011000000011100100010001010100)))
(assert (= y (fp #b1 #b11001010110 #b1010010010011101100100010010111111100100010001101110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
