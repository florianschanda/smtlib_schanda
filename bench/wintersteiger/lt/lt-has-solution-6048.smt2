(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.343956654639043346577409465680830180644989013671875p226 {+ 1549043061663998 226 (1.44932e+068)}
; Y = 1.891624812198860805523281669593416154384613037109375p-887 {+ 4015521171973078 -887 (1.83328e-267)}
; 1.343956654639043346577409465680830180644989013671875p226 < 1.891624812198860805523281669593416154384613037109375p-887 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011100001 #b0101100000001101100010110001011011101010100011111110)))
(assert (= y (fp #b0 #b00010001000 #b1110010001000001100001100001000010110010001111010110)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
