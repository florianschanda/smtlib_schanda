(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.13210709909255857752441443153657019138336181640625p873 {+ 594957482246244 873 (7.12974e+262)}
; Y = 1.7416738384260532779279628812219016253948211669921875p782 {+ 3340202022366019 782 (4.4302e+235)}
; 1.13210709909255857752441443153657019138336181640625p873 = 1.7416738384260532779279628812219016253948211669921875p782 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101101000 #b0010000111010001110001010101011000101100000001100100)))
(assert (= y (fp #b0 #b11100001101 #b1011110111011110010101100011000001010110101101000011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
