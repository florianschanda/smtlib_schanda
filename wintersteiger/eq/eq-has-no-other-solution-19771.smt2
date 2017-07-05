(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0069332202044891655390301821171306073665618896484375p-936 {- 31224447929415 -936 (-1.7335e-282)}
; Y = 1.1397248250613516429297078502713702619075775146484375p855 {+ 629264670080711 855 (2.73808e+257)}
; -1.0069332202044891655390301821171306073665618896484375p-936 = 1.1397248250613516429297078502713702619075775146484375p855 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00001010111 #b0000000111000110011000000010001000001000110001000111)))
(assert (= y (fp #b0 #b11101010110 #b0010001111000101000000011001001000010011111011000111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
