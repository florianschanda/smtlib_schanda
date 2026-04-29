(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9705387631057738051509886645362712442874908447265625p-328 {+ 4370918011871785 -328 (3.60368e-099)}
; Y = -1.2067023130638983019480292568914592266082763671875p548 {- 930904460091192 548 (-1.11183e+165)}
; 1.9705387631057738051509886645362712442874908447265625p-328 > -1.2067023130638983019480292568914592266082763671875p548 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010110111 #b1111100001110101001110100111011100001010001000101001)))
(assert (= y (fp #b1 #b11000100011 #b0011010011101010011100010101101010011101111100111000)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
