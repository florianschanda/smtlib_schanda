(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.981199877966605793488952258485369384288787841796875p557 {- 4418931404786382 557 (-9.34622e+167)}
; Y = 1.663045590705050091884231733274646103382110595703125p-646 {+ 2986091875228914 -646 (5.69544e-195)}
; -1.981199877966605793488952258485369384288787841796875p557 > 1.663045590705050091884231733274646103382110595703125p-646 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000101100 #b1111101100101111111010100100101010110100101011001110)))
(assert (= y (fp #b0 #b00101111001 #b1010100110111101010110110001011111010101110011110010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
