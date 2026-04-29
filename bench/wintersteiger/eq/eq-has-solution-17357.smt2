(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.11077784416476976758758610230870544910430908203125p-951 {+ 498899057701364 -951 (5.83581e-287)}
; Y = 1.051127230811146784361653772066347301006317138671875p-886 {+ 230256577629566 -886 (2.03741e-267)}
; 1.11077784416476976758758610230870544910430908203125p-951 = 1.051127230811146784361653772066347301006317138671875p-886 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00001001000 #b0001110001011011111011111101000111001111000111110100)))
(assert (= y (fp #b0 #b00010001001 #b0000110100010110101011001001100001000100110101111110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
