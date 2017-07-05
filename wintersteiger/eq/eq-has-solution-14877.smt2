(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.84758715095305969811079194187186658382415771484375p805 {- 3817193177196220 805 (-3.94232e+242)}
; Y = 1.747628215645231630759326435509137809276580810546875p-203 {+ 3367018153391534 -203 (1.35944e-061)}
; -1.84758715095305969811079194187186658382415771484375p805 = 1.747628215645231630759326435509137809276580810546875p-203 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100100100 #b1101100011111011011110001011010111011010011010111100)))
(assert (= y (fp #b0 #b01100110100 #b1011111101100100100100000000111111000011010110101110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
