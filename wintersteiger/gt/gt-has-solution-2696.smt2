(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2262346831652213285934749364969320595264434814453125p583 {- 1018870434801173 583 (-3.88205e+175)}
; Y = 1.995637934992397166666933117085136473178863525390625p-56 {+ 4483954633027690 -56 (2.7695e-017)}
; -1.2262346831652213285934749364969320595264434814453125p583 > 1.995637934992397166666933117085136473178863525390625p-56 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000110 #b0011100111101010100001000010010101101010011000010101)))
(assert (= y (fp #b0 #b01111000111 #b1111111011100010001000001011000101110011000001101010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
