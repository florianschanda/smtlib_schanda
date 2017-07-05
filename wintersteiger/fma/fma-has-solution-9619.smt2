(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.66621643732375890323282874305732548236846923828125p327 {+ 3000372098879380 327 (4.55554e+098)}
; Y = -1.0306856983095651347781540607684291899204254150390625p782 {- 138196099472561 782 (-2.6217e+235)}
; Z = -1.034475224806683524292338915984146296977996826171875p-484 {- 155262609592894 -484 (-2.07111e-146)}
; 1.66621643732375890323282874305732548236846923828125p327 x -1.0306856983095651347781540607684291899204254150390625p782 -1.034475224806683524292338915984146296977996826171875p-484 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101000110 #b1010101010001101001010010001001001011100111110010100)))
(assert (= y (fp #b1 #b11100001101 #b0000011111011011000001001001011010110001110010110001)))
(assert (= z (fp #b1 #b01000011011 #b0000100011010011010111100100101100010001001000111110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
