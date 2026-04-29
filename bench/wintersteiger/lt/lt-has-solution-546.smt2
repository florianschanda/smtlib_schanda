(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.292424559342271184192441069171763956546783447265625p644 {+ 1316963136487834 644 (9.43458e+193)}
; Y = 1.6190956303188908105283871918800286948680877685546875p946 {+ 2788158850010859 946 (9.63049e+284)}
; 1.292424559342271184192441069171763956546783447265625p644 < 1.6190956303188908105283871918800286948680877685546875p946 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010000011 #b0100101011011100010101011111111011101100000110011010)))
(assert (= y (fp #b0 #b11110110001 #b1001111001111101000011010001110101010000111011101011)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
