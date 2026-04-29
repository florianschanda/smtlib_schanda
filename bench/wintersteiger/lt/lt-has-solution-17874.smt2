(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0213197554040920334017528148251585662364959716796875p730 {+ 96015642493499 730 (5.76844e+219)}
; Y = 1.6589781482917442811952923875651322305202484130859375p-652 {+ 2967773743091999 -652 (8.87735e-197)}
; 1.0213197554040920334017528148251585662364959716796875p730 < 1.6589781482917442811952923875651322305202484130859375p-652 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011011001 #b0000010101110101001101100010010000111000001000111011)))
(assert (= y (fp #b0 #b00101110011 #b1010100010110010110010101011101110110001000100011111)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
