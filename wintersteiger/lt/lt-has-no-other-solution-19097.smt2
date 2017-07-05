(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2335284322030475312459429915179498493671417236328125p570 {- 1051718560250061 570 (-4.76702e+171)}
; Y = 1.1465182577518564510654641708242706954479217529296875p134 {+ 659859571014235 134 (2.4969e+040)}
; -1.2335284322030475312459429915179498493671417236328125p570 < 1.1465182577518564510654641708242706954479217529296875p134 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000111001 #b0011101111001000100001001111001011111111100011001101)))
(assert (= y (fp #b0 #b10010000101 #b0010010110000010001110000111010101001111101001011011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
