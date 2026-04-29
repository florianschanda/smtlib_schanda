(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0458505826822459550129451599786989390850067138671875p-230 {+ 206492667082483 -230 (6.06137e-070)}
; Y = 1.395811139225580088663036804064176976680755615234375p-196 {+ 1782574899125414 -196 (1.38978e-059)}
; 1.0458505826822459550129451599786989390850067138671875p-230 = 1.395811139225580088663036804064176976680755615234375p-196 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01100011001 #b0000101110111100110111010010000100011111011011110011)))
(assert (= y (fp #b0 #b01100111011 #b0110010101010011111000001111101001011101110010100110)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
