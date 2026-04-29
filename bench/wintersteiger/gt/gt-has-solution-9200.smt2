(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4865014312490238967967570715700276196002960205078125p774 {+ 2191007664488317 774 (1.47701e+233)}
; Y = -1.0434531681320862173123487082193605601787567138671875p220 {- 195695671807731 220 (-1.75822e+066)}
; 1.4865014312490238967967570715700276196002960205078125p774 > -1.0434531681320862173123487082193605601787567138671875p220 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100000101 #b0111110010001011010110111001100010101011111101111101)))
(assert (= y (fp #b1 #b10011011011 #b0000101100011111101111110011000000001000111011110011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
