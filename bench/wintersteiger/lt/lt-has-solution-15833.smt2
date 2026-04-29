(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2421921579323027540198154383688233792781829833984375p616 {+ 1090736512215975 616 (3.37805e+185)}
; Y = -1.00330862510603235904227403807453811168670654296875p-555 {- 14900722794636 -555 (-8.50721e-168)}
; 1.2421921579323027540198154383688233792781829833984375p616 < -1.00330862510603235904227403807453811168670654296875p-555 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001100111 #b0011111000000000010011100010010110101010101110100111)))
(assert (= y (fp #b1 #b00111010100 #b0000000011011000110101011000010010100000000010001100)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
