(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.519285130292015395525595522485673427581787109375p8 {+ 2338652319282160 8 (388.937)}
; Y = -1.5687445943571602935406872347812168300151824951171875p727 {- 2561397943215891 727 (-1.10754e+219)}
; 1.519285130292015395525595522485673427581787109375p8 = -1.5687445943571602935406872347812168300151824951171875p727 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000111 #b1000010011101111110111101100101111100111001111110000)))
(assert (= y (fp #b1 #b11011010110 #b1001000110011001001111101110100010001010011100010011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
