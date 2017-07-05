(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.285392159721989724374680008622817695140838623046875p341 {- 1285292024178414 341 (-5.7579e+102)}
; Y = 1.9918858478829835068069087355979718267917633056640625p700 {+ 4467056734919873 700 (1.04776e+211)}
; -1.285392159721989724374680008622817695140838623046875p341 M 1.9918858478829835068069087355979718267917633056640625p700 == 1.9918858478829835068069087355979718267917633056640625p700
; [HW: 1.9918858478829835068069087355979718267917633056640625p700] 

; mpf : + 4467056734919873 700
; mpfd: + 4467056734919873 700 (1.04776e+211) class: Pos. norm. non-zero
; hwf : + 4467056734919873 700 (1.04776e+211) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101010100 #b0100100100001111011101011110100010001010011011101110)))
(assert (= y (fp #b0 #b11010111011 #b1111110111101100001110110001111000000101110011000001)))
(assert (= r (fp #b0 #b11010111011 #b1111110111101100001110110001111000000101110011000001)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
