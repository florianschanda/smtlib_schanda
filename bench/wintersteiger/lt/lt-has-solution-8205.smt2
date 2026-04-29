(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0304977120201985751890561004984192550182342529296875p956 {+ 137349484489819 956 (6.27658e+287)}
; Y = 1.2197143990039569505512417890713550150394439697265625p-1008 {+ 989505685482153 -1008 (4.44654e-304)}
; 1.0304977120201985751890561004984192550182342529296875p956 < 1.2197143990039569505512417890713550150394439697265625p-1008 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110111011 #b0000011111001110101100101011001110111010110001011011)))
(assert (= y (fp #b0 #b00000001111 #b0011100000111111001100111110111000101110101010101001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
