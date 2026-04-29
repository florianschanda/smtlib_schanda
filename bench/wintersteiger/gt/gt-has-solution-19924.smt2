(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4311801717844374604027279929141514003276824951171875p-494 {- 1941862860977939 -494 (-2.79819e-149)}
; Y = -1.673988262720834452323970253928564488887786865234375p614 {- 3035373288841638 614 (-1.13807e+185)}
; -1.4311801717844374604027279929141514003276824951171875p-494 > -1.673988262720834452323970253928564488887786865234375p614 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000010001 #b0110111001100001110100101110000001111111011100010011)))
(assert (= y (fp #b1 #b11001100101 #b1010110010001010011111101010101001000110000110100110)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
