(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7227008494425362084001562834600917994976043701171875p-760 {+ 3254755276249747 -760 (2.84062e-229)}
; Y = -1.9624674177794207974301343710976652801036834716796875p-620 {- 4334567904067643 -620 (-4.5103e-187)}
; 1.7227008494425362084001562834600917994976043701171875p-760 > -1.9624674177794207974301343710976652801036834716796875p-620 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100000111 #b1011100100000010111011000100000100100101101010010011)))
(assert (= y (fp #b1 #b00110010011 #b1111011001100100010000111100001011010100000000111011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
